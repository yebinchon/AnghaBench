
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* parent; } ;


 TYPE_1__* top_scope ;

__attribute__((used)) static void
pop_scope (void)
{
  top_scope = top_scope->parent;
}
