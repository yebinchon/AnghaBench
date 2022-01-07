
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action {struct tc_action* next; } ;


 int kfree (struct tc_action*) ;

__attribute__((used)) static void cleanup_a(struct tc_action *act)
{
 struct tc_action *a;

 for (a = act; a; a = act) {
  act = a->next;
  kfree(a);
 }
}
