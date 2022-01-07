
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pair_p ;
struct TYPE_3__ {int type; struct TYPE_3__* next; } ;


 int GC_USED ;
 int set_gc_used_type (int ,int ,int *) ;

__attribute__((used)) static void
set_gc_used (pair_p variables)
{
  pair_p p;
  for (p = variables; p; p = p->next)
    set_gc_used_type (p->type, GC_USED, ((void*)0));
}
