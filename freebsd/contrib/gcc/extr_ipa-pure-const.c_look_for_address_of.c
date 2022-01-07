
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* funct_state ;
struct TYPE_4__ {scalar_t__ pure_const_state; } ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ IPA_CONST ;
 scalar_t__ IPA_PURE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int check_decl (TYPE_1__*,int ,int) ;
 int get_base_var (int ) ;

__attribute__((used)) static void
look_for_address_of (funct_state local, tree t)
{
  if (TREE_CODE (t) == ADDR_EXPR)
    {
      tree x = get_base_var (t);
      if (TREE_CODE (x) == VAR_DECL)
 {
   check_decl (local, x, 0);



   if (local->pure_const_state == IPA_CONST)
     local->pure_const_state = IPA_PURE;
 }
    }
}
