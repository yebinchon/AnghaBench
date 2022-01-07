
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct expression {int dummy; } ;


 int EVAL_NORMAL ;
 int NULL_TYPE ;
 struct value* evaluate_subexp (int ,struct expression*,int*,int ) ;

struct value *
evaluate_expression (struct expression *exp)
{
  int pc = 0;
  return evaluate_subexp (NULL_TYPE, exp, &pc, EVAL_NORMAL);
}
