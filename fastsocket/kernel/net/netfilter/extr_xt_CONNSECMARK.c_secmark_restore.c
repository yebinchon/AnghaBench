
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ secmark; } ;
struct nf_conn {scalar_t__ secmark; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;

__attribute__((used)) static void secmark_restore(struct sk_buff *skb)
{
 if (!skb->secmark) {
  const struct nf_conn *ct;
  enum ip_conntrack_info ctinfo;

  ct = nf_ct_get(skb, &ctinfo);
  if (ct && ct->secmark)
   skb->secmark = ct->secmark;
 }
}
