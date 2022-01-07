
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int n_operands; int * operand; } ;


 scalar_t__ CONSTANT_P (int ) ;




 int extract_insn_cached (int ) ;
 int fatal_insn (char*,int ) ;
 int gcc_assert (int) ;
 int get_attr_mode (int ) ;
 TYPE_1__ recog_data ;
 scalar_t__ satisfies_constraint_K (int ) ;

int
ix86_attr_length_immediate_default (rtx insn, int shortform)
{
  int len = 0;
  int i;
  extract_insn_cached (insn);
  for (i = recog_data.n_operands - 1; i >= 0; --i)
    if (CONSTANT_P (recog_data.operand[i]))
      {
 gcc_assert (!len);
 if (shortform && satisfies_constraint_K (recog_data.operand[i]))
   len = 1;
 else
   {
     switch (get_attr_mode (insn))
       {
  case 129:
    len+=1;
    break;
  case 130:
    len+=2;
    break;
  case 128:
    len+=4;
    break;

  case 131:
    len+=4;
    break;
  default:
    fatal_insn ("unknown insn mode", insn);
       }
   }
      }
  return len;
}
