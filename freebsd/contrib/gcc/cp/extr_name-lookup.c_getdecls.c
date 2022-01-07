
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int names; } ;


 TYPE_1__* current_binding_level ;

tree
getdecls (void)
{
  return current_binding_level->names;
}
