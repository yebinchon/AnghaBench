
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int n_operands; int * operand; } ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int SET_SRC (int ) ;
 scalar_t__ TYPE_LEA ;
 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int ) ;
 int extract_insn_cached (int ) ;
 int gcc_assert (int) ;
 scalar_t__ get_attr_type (int ) ;
 int memory_address_length (int ) ;
 TYPE_1__ recog_data ;

int
ix86_attr_length_address_default (rtx insn)
{
  int i;

  if (get_attr_type (insn) == TYPE_LEA)
    {
      rtx set = PATTERN (insn);

      if (GET_CODE (set) == PARALLEL)
 set = XVECEXP (set, 0, 0);

      gcc_assert (GET_CODE (set) == SET);

      return memory_address_length (SET_SRC (set));
    }

  extract_insn_cached (insn);
  for (i = recog_data.n_operands - 1; i >= 0; --i)
    if (GET_CODE (recog_data.operand[i]) == MEM)
      {
 return memory_address_length (XEXP (recog_data.operand[i], 0));
 break;
      }
  return 0;
}
