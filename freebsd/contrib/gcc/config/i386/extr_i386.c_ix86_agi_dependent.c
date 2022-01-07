
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;
struct TYPE_2__ {int n_operands; int * operand; } ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int SET_SRC (int ) ;
 scalar_t__ TARGET_PENTIUM ;
 int TYPE_LEA ;
 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int ) ;
 int extract_insn_cached (int ) ;
 int gcc_assert (int) ;
 int modified_in_p (int ,int ) ;
 TYPE_1__ recog_data ;

__attribute__((used)) static int
ix86_agi_dependent (rtx insn, rtx dep_insn, enum attr_type insn_type)
{
  rtx addr;

  if (insn_type == TYPE_LEA
      && TARGET_PENTIUM)
    {
      addr = PATTERN (insn);

      if (GET_CODE (addr) == PARALLEL)
 addr = XVECEXP (addr, 0, 0);

      gcc_assert (GET_CODE (addr) == SET);

      addr = SET_SRC (addr);
    }
  else
    {
      int i;
      extract_insn_cached (insn);
      for (i = recog_data.n_operands - 1; i >= 0; --i)
 if (GET_CODE (recog_data.operand[i]) == MEM)
   {
     addr = XEXP (recog_data.operand[i], 0);
     goto found;
   }
      return 0;
    found:;
    }

  return modified_in_p (addr, dep_insn);
}
