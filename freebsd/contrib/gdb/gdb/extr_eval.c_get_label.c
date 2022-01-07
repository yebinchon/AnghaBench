
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expression {TYPE_1__* elts; } ;
struct TYPE_2__ {scalar_t__ opcode; char string; int longconst; } ;


 scalar_t__ BYTES_TO_EXP_ELEM (int) ;
 scalar_t__ OP_LABELED ;
 int longest_to_int (int ) ;

__attribute__((used)) static char *
get_label (struct expression *exp, int *pos)
{
  if (exp->elts[*pos].opcode == OP_LABELED)
    {
      int pc = (*pos)++;
      char *name = &exp->elts[pc + 2].string;
      int tem = longest_to_int (exp->elts[pc + 1].longconst);
      (*pos) += 3 + BYTES_TO_EXP_ELEM (tem + 1);
      return name;
    }
  else
    return ((void*)0);
}
