
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data {int n_operands; int lineno; TYPE_1__* operand; } ;
struct TYPE_2__ {scalar_t__ seen; } ;


 int have_error ;
 int message_with_line (int ,char*,int) ;

__attribute__((used)) static void
validate_insn_operands (struct data *d)
{
  int i;

  for (i = 0; i < d->n_operands; ++i)
    if (d->operand[i].seen == 0)
      {
 message_with_line (d->lineno, "missing operand %d", i);
 have_error = 1;
      }
}
