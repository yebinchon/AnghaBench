
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct function {TYPE_1__* expr; } ;
typedef int rtx ;
struct TYPE_2__ {int x_forced_labels; } ;


 int VOIDmode ;
 struct function* cfun ;
 scalar_t__ current_function_decl ;
 scalar_t__ decl_function_context (scalar_t__) ;
 struct function* find_function_data (scalar_t__) ;
 int gcc_assert (scalar_t__) ;
 int gen_rtx_EXPR_LIST (int ,int ,int ) ;
 int label_rtx (scalar_t__) ;

rtx
force_label_rtx (tree label)
{
  rtx ref = label_rtx (label);
  tree function = decl_function_context (label);
  struct function *p;

  gcc_assert (function);

  if (function != current_function_decl)
    p = find_function_data (function);
  else
    p = cfun;

  p->expr->x_forced_labels = gen_rtx_EXPR_LIST (VOIDmode, ref,
      p->expr->x_forced_labels);
  return ref;
}
