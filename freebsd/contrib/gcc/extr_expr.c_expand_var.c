
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {scalar_t__ (* expand_decl ) (int ) ;} ;


 scalar_t__ CONST_DECL ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_HAS_VALUE_EXPR_P (int ) ;
 int DECL_ORIGIN (int ) ;
 int DECL_RTL_SET_P (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ LABEL_DECL ;
 int TREE_ASM_WRITTEN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ VAR_DECL ;
 int expand_decl (int ) ;
 int gcc_assert (int) ;
 TYPE_1__ lang_hooks ;
 int rest_of_decl_compilation (int ,int ,int ) ;
 scalar_t__ stub1 (int ) ;

void
expand_var (tree var)
{
  if (DECL_EXTERNAL (var))
    return;

  if (TREE_STATIC (var))


    var = DECL_ORIGIN (var);

  if (TREE_STATIC (var)
      ? !TREE_ASM_WRITTEN (var)
      : !DECL_RTL_SET_P (var))
    {
      if (TREE_CODE (var) == VAR_DECL && DECL_HAS_VALUE_EXPR_P (var))
                          ;
      else if (lang_hooks.expand_decl (var))
           ;
      else if (TREE_CODE (var) == VAR_DECL && !TREE_STATIC (var))
 expand_decl (var);
      else if (TREE_CODE (var) == VAR_DECL && TREE_STATIC (var))
 rest_of_decl_compilation (var, 0, 0);
      else

 gcc_assert (TREE_CODE (var) == TYPE_DECL
      || TREE_CODE (var) == CONST_DECL
      || TREE_CODE (var) == FUNCTION_DECL
      || TREE_CODE (var) == LABEL_DECL);
    }
}
