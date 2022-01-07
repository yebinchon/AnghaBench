
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sip_header {char* search; unsigned int (* match_len ) (struct nf_conn const*,char const*,char const*,int*) ;int slen; } ;
struct nf_conn {int dummy; } ;
typedef enum sip_header_types { ____Placeholder_sip_header_types } sip_header_types ;


 struct sip_header* ct_sip_hdrs ;
 char* ct_sip_header_search (char const*,char const*,char*,int ) ;
 int strlen (char*) ;
 unsigned int stub1 (struct nf_conn const*,char const*,char const*,int*) ;

__attribute__((used)) static int ct_sip_next_header(const struct nf_conn *ct, const char *dptr,
         unsigned int dataoff, unsigned int datalen,
         enum sip_header_types type,
         unsigned int *matchoff, unsigned int *matchlen)
{
 const struct sip_header *hdr = &ct_sip_hdrs[type];
 const char *start = dptr, *limit = dptr + datalen;
 int shift = 0;

 dptr += dataoff;

 dptr = ct_sip_header_search(dptr, limit, ",", strlen(","));
 if (!dptr)
  return 0;

 dptr = ct_sip_header_search(dptr, limit, hdr->search, hdr->slen);
 if (!dptr)
  return 0;
 dptr += hdr->slen;

 *matchoff = dptr - start;
 *matchlen = hdr->match_len(ct, dptr, limit, &shift);
 if (!*matchlen)
  return -1;
 *matchoff += shift;
 return 1;
}
