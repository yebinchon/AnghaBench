
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct sk_buff {char* data; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int ip_hdrlen (struct sk_buff*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_nat_mangle_udp_packet (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,char const*,unsigned int) ;

__attribute__((used)) static unsigned int mangle_packet(struct sk_buff *skb,
      const char **dptr, unsigned int *datalen,
      unsigned int matchoff, unsigned int matchlen,
      const char *buffer, unsigned int buflen)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);

 if (!nf_nat_mangle_udp_packet(skb, ct, ctinfo, matchoff, matchlen,
          buffer, buflen))
  return 0;


 *dptr = skb->data + ip_hdrlen(skb) + sizeof(struct udphdr);
 *datalen += buflen - matchlen;
 return 1;
}
