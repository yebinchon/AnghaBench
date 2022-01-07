
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int (* expand_decl ) (int ) ;} ;


 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_HARD_REGISTER (int ) ;
 scalar_t__ DECL_HAS_VALUE_EXPR_P (int ) ;
 scalar_t__ DECL_RTL_SET_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 scalar_t__ VAR_DECL ;
 int add_stack_var (int ) ;
 scalar_t__ defer_stack_allocation (int ,int) ;
 scalar_t__ error_mark_node ;
 int expand_one_error_var (int ) ;
 int expand_one_hard_reg_var (int ) ;
 int expand_one_register_var (int ) ;
 int expand_one_stack_var (int ) ;
 int expand_one_static_var (int ) ;
 TYPE_1__ lang_hooks ;
 int stub1 (int ) ;
 scalar_t__ use_register_for_decl (int ) ;

__attribute__((used)) static void
expand_one_var (tree var, bool toplevel)
{
  if (TREE_CODE (var) != VAR_DECL)
    lang_hooks.expand_decl (var);
  else if (DECL_EXTERNAL (var))
    ;
  else if (DECL_HAS_VALUE_EXPR_P (var))
    ;
  else if (TREE_STATIC (var))
    expand_one_static_var (var);
  else if (DECL_RTL_SET_P (var))
    ;
  else if (TREE_TYPE (var) == error_mark_node)
    expand_one_error_var (var);
  else if (DECL_HARD_REGISTER (var))
    expand_one_hard_reg_var (var);
  else if (use_register_for_decl (var))
    expand_one_register_var (var);
  else if (defer_stack_allocation (var, toplevel))
    add_stack_var (var);
  else
    expand_one_stack_var (var);
}
