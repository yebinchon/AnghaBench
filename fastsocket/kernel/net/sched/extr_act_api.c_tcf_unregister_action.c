
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action_ops {struct tc_action_ops* next; } ;


 int ENOENT ;
 struct tc_action_ops* act_base ;
 int act_mod_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int tcf_unregister_action(struct tc_action_ops *act)
{
 struct tc_action_ops *a, **ap;
 int err = -ENOENT;

 write_lock(&act_mod_lock);
 for (ap = &act_base; (a = *ap) != ((void*)0); ap = &a->next)
  if (a == act)
   break;
 if (a) {
  *ap = a->next;
  a->next = ((void*)0);
  err = 0;
 }
 write_unlock(&act_mod_lock);
 return err;
}
