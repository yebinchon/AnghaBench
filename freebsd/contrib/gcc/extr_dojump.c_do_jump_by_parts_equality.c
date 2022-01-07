
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int do_jump_by_parts_equality_rtx (int,int ,int ,int ,int ) ;
 int expand_normal (int ) ;

__attribute__((used)) static void
do_jump_by_parts_equality (tree exp, rtx if_false_label, rtx if_true_label)
{
  rtx op0 = expand_normal (TREE_OPERAND (exp, 0));
  rtx op1 = expand_normal (TREE_OPERAND (exp, 1));
  enum machine_mode mode = TYPE_MODE (TREE_TYPE (TREE_OPERAND (exp, 0)));
  do_jump_by_parts_equality_rtx (mode, op0, op1, if_false_label,
     if_true_label);
}
