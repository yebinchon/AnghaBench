
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expressionS ;


 int expression (int *) ;
 char* input_line_pointer ;

void
md_operand (expressionS * exp)
{
  char c = *input_line_pointer;

  switch (c)
    {
    case '*':
      input_line_pointer++;
      expression (exp);
      break;
    default:
      break;
    }
}
