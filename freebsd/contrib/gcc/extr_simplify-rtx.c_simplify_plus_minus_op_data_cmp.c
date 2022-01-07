
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simplify_plus_minus_op_data {int op; } ;


 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int commutative_operand_precedence (int ) ;

__attribute__((used)) static int
simplify_plus_minus_op_data_cmp (const void *p1, const void *p2)
{
  const struct simplify_plus_minus_op_data *d1 = p1;
  const struct simplify_plus_minus_op_data *d2 = p2;
  int result;

  result = (commutative_operand_precedence (d2->op)
     - commutative_operand_precedence (d1->op));
  if (result)
    return result;


  if (REG_P (d1->op) && REG_P (d2->op))
    return REGNO (d1->op) - REGNO (d2->op);
  else
    return 0;
}
