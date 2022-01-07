
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t_op {char* op_text; int op_num; } ;


 int OPERAND ;

__attribute__((used)) static int
find_op_1char(const struct t_op *op, const struct t_op *end, const char *s)
{
 char c;

 c = s[0];
 while (op != end) {
  if (c == *op->op_text)
   return op->op_num;
  op++;
 }
 return OPERAND;
}
