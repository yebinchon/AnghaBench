
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cgraph_edge {TYPE_2__* next_caller; TYPE_3__* callee; TYPE_1__* prev_caller; } ;
struct TYPE_6__ {TYPE_2__* callers; } ;
struct TYPE_5__ {TYPE_1__* prev_caller; } ;
struct TYPE_4__ {TYPE_2__* next_caller; } ;



__attribute__((used)) static inline void
cgraph_edge_remove_callee (struct cgraph_edge *e)
{
  if (e->prev_caller)
    e->prev_caller->next_caller = e->next_caller;
  if (e->next_caller)
    e->next_caller->prev_caller = e->prev_caller;
  if (!e->prev_caller)
    e->callee->callers = e->next_caller;
}
