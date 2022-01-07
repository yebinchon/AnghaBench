
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sip_handler {int (* request ) (struct sk_buff*,char const**,unsigned int*,unsigned int) ;unsigned int len; int method; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 unsigned int ARRAY_SIZE (struct sip_handler*) ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int SIP_HDR_CSEQ ;
 scalar_t__ ct_sip_get_header (struct nf_conn*,char const*,int ,unsigned int,int ,unsigned int*,unsigned int*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 unsigned int simple_strtoul (char const*,int *,int) ;
 struct sip_handler* sip_handlers ;
 scalar_t__ strnicmp (char const*,int ,unsigned int) ;
 int stub1 (struct sk_buff*,char const**,unsigned int*,unsigned int) ;

__attribute__((used)) static int process_sip_request(struct sk_buff *skb,
          const char **dptr, unsigned int *datalen)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 unsigned int matchoff, matchlen;
 unsigned int cseq, i;

 for (i = 0; i < ARRAY_SIZE(sip_handlers); i++) {
  const struct sip_handler *handler;

  handler = &sip_handlers[i];
  if (handler->request == ((void*)0))
   continue;
  if (*datalen < handler->len ||
      strnicmp(*dptr, handler->method, handler->len))
   continue;

  if (ct_sip_get_header(ct, *dptr, 0, *datalen, SIP_HDR_CSEQ,
          &matchoff, &matchlen) <= 0)
   return NF_DROP;
  cseq = simple_strtoul(*dptr + matchoff, ((void*)0), 10);
  if (!cseq)
   return NF_DROP;

  return handler->request(skb, dptr, datalen, cseq);
 }
 return NF_ACCEPT;
}
