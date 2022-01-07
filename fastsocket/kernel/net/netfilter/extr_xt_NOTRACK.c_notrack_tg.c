
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_target_param {int dummy; } ;
struct sk_buff {int * nfct; int nfctinfo; } ;
struct TYPE_2__ {int ct_general; } ;


 int IP_CT_NEW ;
 unsigned int XT_CONTINUE ;
 int nf_conntrack_get (int *) ;
 TYPE_1__ nf_conntrack_untracked ;

__attribute__((used)) static unsigned int
notrack_tg(struct sk_buff *skb, const struct xt_target_param *par)
{

 if (skb->nfct != ((void*)0))
  return XT_CONTINUE;





 skb->nfct = &nf_conntrack_untracked.ct_general;
 skb->nfctinfo = IP_CT_NEW;
 nf_conntrack_get(skb->nfct);

 return XT_CONTINUE;
}
