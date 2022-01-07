
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; struct TYPE_4__* level_chain; } ;
typedef TYPE_1__ cxx_scope ;


 TYPE_1__* current_binding_level ;
 scalar_t__ sk_class ;

__attribute__((used)) static cxx_scope *
innermost_nonclass_level (void)
{
  cxx_scope *b;

  b = current_binding_level;
  while (b->kind == sk_class)
    b = b->level_chain;

  return b;
}
