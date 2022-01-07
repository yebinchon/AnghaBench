
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum need_phi_state { ____Placeholder_need_phi_state } need_phi_state ;
struct TYPE_4__ {int need_phi_state; } ;
struct TYPE_3__ {int need_phi_state; } ;


 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 TYPE_2__* get_ssa_name_ann (int ) ;
 TYPE_1__* var_ann (int ) ;

__attribute__((used)) static inline enum need_phi_state
get_phi_state (tree var)
{
  if (TREE_CODE (var) == SSA_NAME)
    return get_ssa_name_ann (var)->need_phi_state;
  else
    return var_ann (var)->need_phi_state;
}
