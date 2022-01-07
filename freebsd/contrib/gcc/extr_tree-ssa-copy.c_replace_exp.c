
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int use_operand_p ;
typedef int tree ;


 int replace_exp_1 (int ,int ,int) ;

void
replace_exp (use_operand_p op_p, tree val)
{
  replace_exp_1 (op_p, val, 0);
}
