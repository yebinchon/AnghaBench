
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {int funcs; scalar_t__ state; int (* unregfunc ) () ;} ;


 int rcu_assign_pointer (int ,int *) ;
 int stub1 () ;

__attribute__((used)) static void disable_tracepoint(struct tracepoint *elem)
{
 if (elem->unregfunc && elem->state)
  elem->unregfunc();

 elem->state = 0;
 rcu_assign_pointer(elem->funcs, ((void*)0));
}
