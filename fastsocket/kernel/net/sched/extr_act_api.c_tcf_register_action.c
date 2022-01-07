
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action_ops {scalar_t__ type; struct tc_action_ops* next; int kind; } ;


 int EEXIST ;
 struct tc_action_ops* act_base ;
 int act_mod_lock ;
 scalar_t__ strcmp (int ,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int tcf_register_action(struct tc_action_ops *act)
{
 struct tc_action_ops *a, **ap;

 write_lock(&act_mod_lock);
 for (ap = &act_base; (a = *ap) != ((void*)0); ap = &a->next) {
  if (act->type == a->type || (strcmp(act->kind, a->kind) == 0)) {
   write_unlock(&act_mod_lock);
   return -EEXIST;
  }
 }
 act->next = ((void*)0);
 *ap = act;
 write_unlock(&act_mod_lock);
 return 0;
}
