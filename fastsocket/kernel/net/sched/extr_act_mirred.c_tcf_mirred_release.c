
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_mirred {scalar_t__ tcf_refcnt; int common; scalar_t__ tcfm_dev; int tcfm_list; int tcf_bindcnt; } ;


 int dev_put (scalar_t__) ;
 int list_del (int *) ;
 int mirred_hash_info ;
 int tcf_hash_destroy (int *,int *) ;

__attribute__((used)) static inline int tcf_mirred_release(struct tcf_mirred *m, int bind)
{
 if (m) {
  if (bind)
   m->tcf_bindcnt--;
  m->tcf_refcnt--;
  if(!m->tcf_bindcnt && m->tcf_refcnt <= 0) {
   list_del(&m->tcfm_list);
   if (m->tcfm_dev)
    dev_put(m->tcfm_dev);
   tcf_hash_destroy(&m->common, &mirred_hash_info);
   return 1;
  }
 }
 return 0;
}
