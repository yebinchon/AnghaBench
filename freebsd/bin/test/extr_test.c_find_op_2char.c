
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t_op {char const* op_text; int op_num; } ;


 int OPERAND ;

__attribute__((used)) static int
find_op_2char(const struct t_op *op, const struct t_op *end, const char *s)
{
 while (op != end) {
  if (s[0] == op->op_text[0] && s[1] == op->op_text[1])
   return op->op_num;
  op++;
 }
 return OPERAND;
}
