
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct constant_descriptor_tree {int value; int rtl; } ;
typedef int rtx ;


 scalar_t__ TREE_ASM_WRITTEN (int ) ;
 int XEXP (int ,int ) ;
 scalar_t__ cfun ;
 scalar_t__ flag_syntax_only ;
 int n_deferred_constants ;
 int output_constant_def_contents (int ) ;

__attribute__((used)) static void
maybe_output_constant_def_contents (struct constant_descriptor_tree *desc,
        int defer)
{
  rtx symbol = XEXP (desc->rtl, 0);
  tree exp = desc->value;

  if (flag_syntax_only)
    return;

  if (TREE_ASM_WRITTEN (exp))

    return;



  if (defer)
    {





      if (cfun)
 n_deferred_constants++;
      return;
    }

  output_constant_def_contents (symbol);
}
