
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int EXPAND_BUILTIN_VA_START (int ,int ) ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int const0_rtx ;
 int error (char*) ;
 int expand_builtin_next_arg () ;
 scalar_t__ fold_builtin_next_arg (int ) ;
 int stabilize_va_list (int ,int) ;
 int std_expand_builtin_va_start (int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_va_start (tree arglist)
{
  rtx nextarg;
  tree chain, valist;

  chain = TREE_CHAIN (arglist);

  if (!chain)
    {
      error ("too few arguments to function %<va_start%>");
      return const0_rtx;
    }

  if (fold_builtin_next_arg (chain))
    return const0_rtx;

  nextarg = expand_builtin_next_arg ();
  valist = stabilize_va_list (TREE_VALUE (arglist), 1);




  std_expand_builtin_va_start (valist, nextarg);


  return const0_rtx;
}
