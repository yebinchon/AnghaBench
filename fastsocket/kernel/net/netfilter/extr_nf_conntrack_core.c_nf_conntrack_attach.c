
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int nfctinfo; int * nfct; } ;
struct nf_conn {int ct_general; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 scalar_t__ CTINFO2DIR (int) ;
 scalar_t__ IP_CT_DIR_ORIGINAL ;
 int IP_CT_IS_REPLY ;
 int IP_CT_RELATED ;
 int nf_conntrack_get (int *) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;

__attribute__((used)) static void nf_conntrack_attach(struct sk_buff *nskb, struct sk_buff *skb)
{
 struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;


 ct = nf_ct_get(skb, &ctinfo);
 if (CTINFO2DIR(ctinfo) == IP_CT_DIR_ORIGINAL)
  ctinfo = IP_CT_RELATED + IP_CT_IS_REPLY;
 else
  ctinfo = IP_CT_RELATED;


 nskb->nfct = &ct->ct_general;
 nskb->nfctinfo = ctinfo;
 nf_conntrack_get(nskb->nfct);
}
