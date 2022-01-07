
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nf_conn {int dummy; } ;
typedef enum sip_header_types { ____Placeholder_sip_header_types } sip_header_types ;
typedef int __be16 ;


 unsigned int SIP_PORT ;
 int WARN_ON (int) ;
 int ct_sip_walk_headers (struct nf_conn const*,char const*,unsigned int,unsigned int,int,int*,unsigned int*,unsigned int*) ;
 int htons (unsigned int) ;
 int parse_addr (struct nf_conn const*,char const*,char const**,union nf_inet_addr*,char const*) ;
 unsigned int simple_strtoul (char const*,char**,int) ;

int ct_sip_parse_header_uri(const struct nf_conn *ct, const char *dptr,
       unsigned int *dataoff, unsigned int datalen,
       enum sip_header_types type, int *in_header,
       unsigned int *matchoff, unsigned int *matchlen,
       union nf_inet_addr *addr, __be16 *port)
{
 const char *c, *limit = dptr + datalen;
 unsigned int p;
 int ret;

 ret = ct_sip_walk_headers(ct, dptr, dataoff ? *dataoff : 0, datalen,
      type, in_header, matchoff, matchlen);
 WARN_ON(ret < 0);
 if (ret == 0)
  return ret;

 if (!parse_addr(ct, dptr + *matchoff, &c, addr, limit))
  return -1;
 if (*c == ':') {
  c++;
  p = simple_strtoul(c, (char **)&c, 10);
  if (p < 1024 || p > 65535)
   return -1;
  *port = htons(p);
 } else
  *port = htons(SIP_PORT);

 if (dataoff)
  *dataoff = c - dptr;
 return 1;
}
