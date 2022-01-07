
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_4__ {void* current_def; } ;
struct TYPE_3__ {void* current_def; } ;


 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (void*) ;
 TYPE_2__* get_ssa_name_ann (void*) ;
 TYPE_1__* var_ann (void*) ;

void
set_current_def (tree var, tree def)
{
  if (TREE_CODE (var) == SSA_NAME)
    get_ssa_name_ann (var)->current_def = def;
  else
    var_ann (var)->current_def = def;
}
