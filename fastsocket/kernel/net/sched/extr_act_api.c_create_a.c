
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action {int order; } ;


 int GFP_KERNEL ;
 struct tc_action* kzalloc (int,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static struct tc_action *create_a(int i)
{
 struct tc_action *act;

 act = kzalloc(sizeof(*act), GFP_KERNEL);
 if (act == ((void*)0)) {
  pr_debug("create_a: failed to alloc!\n");
  return ((void*)0);
 }
 act->order = i;
 return act;
}
