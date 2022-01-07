
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {scalar_t__ lattice_val; } ;
typedef TYPE_1__ prop_value_t ;


 size_t SSA_NAME_VERSION (int ) ;
 scalar_t__ UNINITIALIZED ;
 TYPE_1__* const_val ;
 TYPE_1__ get_default_value (int ) ;

__attribute__((used)) static prop_value_t *
get_value (tree var, bool may_use_default_p)
{
  prop_value_t *val = &const_val[SSA_NAME_VERSION (var)];
  if (may_use_default_p && val->lattice_val == UNINITIALIZED)
    *val = get_default_value (var);

  return val;
}
