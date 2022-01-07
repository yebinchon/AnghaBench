
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* funct_state ;
struct TYPE_5__ {scalar_t__ pure_const_state; } ;


 scalar_t__ IPA_CONST ;
 scalar_t__ IPA_PURE ;
 int check_tree (TYPE_1__*,int ,int) ;
 int look_for_address_of (TYPE_1__*,int ) ;
 scalar_t__ tree_could_trap_p (int ) ;

__attribute__((used)) static void
check_rhs_var (funct_state local, tree t)
{
  look_for_address_of (local, t);


  if (tree_could_trap_p (t)
      && local->pure_const_state == IPA_CONST)
    local->pure_const_state = IPA_PURE;

  check_tree(local, t, 0);
}
