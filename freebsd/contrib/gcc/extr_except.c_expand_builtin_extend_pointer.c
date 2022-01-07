
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int NULL_RTX ;
 int POINTERS_EXTEND_UNSIGNED ;
 int convert_modes (int ,int ,int ,int) ;
 int expand_expr (int ,int ,int ,int ) ;
 int ptr_mode ;
 int word_mode ;

rtx
expand_builtin_extend_pointer (tree addr_tree)
{
  rtx addr = expand_expr (addr_tree, NULL_RTX, ptr_mode, 0);
  int extend;






  extend = 1;


  return convert_modes (word_mode, ptr_mode, addr, extend);
}
