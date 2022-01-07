
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sp_count; int sp_owner; } ;


 int BUG_ON (int) ;
 TYPE_1__* active_stack ;
 int module_put (int ) ;
 int ocfs2_stack_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_stack_driver_put(void)
{
 spin_lock(&ocfs2_stack_lock);
 BUG_ON(active_stack == ((void*)0));
 BUG_ON(active_stack->sp_count == 0);

 active_stack->sp_count--;
 if (!active_stack->sp_count) {
  module_put(active_stack->sp_owner);
  active_stack = ((void*)0);
 }
 spin_unlock(&ocfs2_stack_lock);
}
