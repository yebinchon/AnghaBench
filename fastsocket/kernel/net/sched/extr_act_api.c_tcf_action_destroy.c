
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_action {struct tc_action* next; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* cleanup ) (struct tc_action*,int) ;int owner; } ;


 scalar_t__ ACT_P_DELETED ;
 int WARN (int,char*) ;
 int kfree (struct tc_action*) ;
 int module_put (int ) ;
 scalar_t__ stub1 (struct tc_action*,int) ;

void tcf_action_destroy(struct tc_action *act, int bind)
{
 struct tc_action *a;

 for (a = act; a; a = act) {
  if (a->ops && a->ops->cleanup) {
   if (a->ops->cleanup(a, bind) == ACT_P_DELETED)
    module_put(a->ops->owner);
   act = act->next;
   kfree(a);
  } else {

   WARN(1, "tcf_action_destroy: BUG? destroying NULL ops\n");
   act = act->next;
   kfree(a);
  }
 }
}
