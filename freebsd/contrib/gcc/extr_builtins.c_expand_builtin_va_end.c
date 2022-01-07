
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int EXPAND_NORMAL ;
 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 int TREE_VALUE (int ) ;
 int VOIDmode ;
 int const0_rtx ;
 int expand_expr (int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_va_end (tree arglist)
{
  tree valist = TREE_VALUE (arglist);



  if (TREE_SIDE_EFFECTS (valist))
    expand_expr (valist, const0_rtx, VOIDmode, EXPAND_NORMAL);

  return const0_rtx;
}
