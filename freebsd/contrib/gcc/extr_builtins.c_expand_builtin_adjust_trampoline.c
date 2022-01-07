
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int NULL_RTX ;
 int POINTER_TYPE ;
 int TRAMPOLINE_ADJUST_ADDRESS (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int expand_normal (int ) ;
 int round_trampoline_addr (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_adjust_trampoline (tree arglist)
{
  rtx tramp;

  if (!validate_arglist (arglist, POINTER_TYPE, VOID_TYPE))
    return NULL_RTX;

  tramp = expand_normal (TREE_VALUE (arglist));
  tramp = round_trampoline_addr (tramp);




  return tramp;
}
