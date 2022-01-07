
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int n_operands; int * operand; } ;


 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int extract_insn_cached (int ) ;
 TYPE_1__ recog_data ;

bool
x86_extended_QIreg_mentioned_p (rtx insn)
{
  int i;
  extract_insn_cached (insn);
  for (i = 0; i < recog_data.n_operands; i++)
    if (REG_P (recog_data.operand[i])
 && REGNO (recog_data.operand[i]) >= 4)
       return 1;
  return 0;
}
