
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
struct TYPE_2__ {scalar_t__ opcode; struct type* type; } ;


 scalar_t__ UNOP_CAST ;
 scalar_t__ alloca (int) ;
 int error (char*) ;
 int memcpy (char*,char*,int) ;
 struct expression* parse_expression (char*) ;

struct type *
parse_and_eval_type (char *p, int length)
{
  char *tmp = (char *) alloca (length + 4);
  struct expression *expr;
  tmp[0] = '(';
  memcpy (tmp + 1, p, length);
  tmp[length + 1] = ')';
  tmp[length + 2] = '0';
  tmp[length + 3] = '\0';
  expr = parse_expression (tmp);
  if (expr->elts[0].opcode != UNOP_CAST)
    error ("Internal error in eval_type.");
  return expr->elts[1].type;
}
