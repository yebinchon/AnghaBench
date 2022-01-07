
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum expand_modifier { ____Placeholder_expand_modifier } expand_modifier ;


 int GET_MODE (int ) ;
 int Pmode ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int VOIDmode ;
 int convert_memory_address (int,int ) ;
 int expand_expr_addr_expr_1 (int ,int ,int,int) ;
 int ptr_mode ;

__attribute__((used)) static rtx
expand_expr_addr_expr (tree exp, rtx target, enum machine_mode tmode,
         enum expand_modifier modifier)
{
  enum machine_mode rmode;
  rtx result;


  if (tmode == VOIDmode)
    tmode = TYPE_MODE (TREE_TYPE (exp));




  if (tmode != Pmode && tmode != ptr_mode)
    tmode = Pmode;

  result = expand_expr_addr_expr_1 (TREE_OPERAND (exp, 0), target,
        tmode, modifier);




  rmode = GET_MODE (result);
  if (rmode == VOIDmode)
    rmode = tmode;
  if (rmode != tmode)
    result = convert_memory_address (tmode, result);

  return result;
}
