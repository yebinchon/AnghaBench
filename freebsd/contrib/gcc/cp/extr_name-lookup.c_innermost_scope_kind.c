
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int scope_kind ;
struct TYPE_2__ {int kind; } ;


 TYPE_1__* current_binding_level ;

scope_kind
innermost_scope_kind (void)
{
  return current_binding_level->kind;
}
