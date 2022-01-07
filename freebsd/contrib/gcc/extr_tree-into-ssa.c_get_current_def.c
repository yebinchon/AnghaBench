
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int current_def; } ;
struct TYPE_3__ {int current_def; } ;


 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 TYPE_2__* get_ssa_name_ann (int ) ;
 TYPE_1__* var_ann (int ) ;

tree
get_current_def (tree var)
{
  if (TREE_CODE (var) == SSA_NAME)
    return get_ssa_name_ann (var)->current_def;
  else
    return var_ann (var)->current_def;
}
