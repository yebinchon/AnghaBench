
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_defact {scalar_t__ tcf_bindcnt; scalar_t__ tcf_refcnt; int common; int tcfd_defdata; } ;


 int kfree (int ) ;
 int simp_hash_info ;
 int tcf_hash_destroy (int *,int *) ;

__attribute__((used)) static int tcf_simp_release(struct tcf_defact *d, int bind)
{
 int ret = 0;
 if (d) {
  if (bind)
   d->tcf_bindcnt--;
  d->tcf_refcnt--;
  if (d->tcf_bindcnt <= 0 && d->tcf_refcnt <= 0) {
   kfree(d->tcfd_defdata);
   tcf_hash_destroy(&d->common, &simp_hash_info);
   ret = 1;
  }
 }
 return ret;
}
