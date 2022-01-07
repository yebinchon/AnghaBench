
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ipt {scalar_t__ tcf_bindcnt; scalar_t__ tcf_refcnt; int common; int tcfi_t; int tcfi_tname; } ;


 int ACT_P_DELETED ;
 int ipt_destroy_target (int ) ;
 int ipt_hash_info ;
 int kfree (int ) ;
 int tcf_hash_destroy (int *,int *) ;

__attribute__((used)) static int tcf_ipt_release(struct tcf_ipt *ipt, int bind)
{
 int ret = 0;
 if (ipt) {
  if (bind)
   ipt->tcf_bindcnt--;
  ipt->tcf_refcnt--;
  if (ipt->tcf_bindcnt <= 0 && ipt->tcf_refcnt <= 0) {
   ipt_destroy_target(ipt->tcfi_t);
   kfree(ipt->tcfi_tname);
   kfree(ipt->tcfi_t);
   tcf_hash_destroy(&ipt->common, &ipt_hash_info);
   ret = ACT_P_DELETED;
  }
 }
 return ret;
}
