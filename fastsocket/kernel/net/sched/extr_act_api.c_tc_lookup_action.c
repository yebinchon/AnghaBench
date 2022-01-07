
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action_ops {int owner; int kind; struct tc_action_ops* next; } ;
struct nlattr {int dummy; } ;


 struct tc_action_ops* act_base ;
 int act_mod_lock ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct tc_action_ops *tc_lookup_action(struct nlattr *kind)
{
 struct tc_action_ops *a = ((void*)0);

 if (kind) {
  read_lock(&act_mod_lock);
  for (a = act_base; a; a = a->next) {
   if (nla_strcmp(kind, a->kind) == 0) {
    if (!try_module_get(a->owner)) {
     read_unlock(&act_mod_lock);
     return ((void*)0);
    }
    break;
   }
  }
  read_unlock(&act_mod_lock);
 }
 return a;
}
