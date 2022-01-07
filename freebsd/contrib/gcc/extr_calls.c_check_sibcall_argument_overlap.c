
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int constant; } ;
struct TYPE_4__ {int constant; } ;
struct TYPE_6__ {TYPE_2__ size; TYPE_1__ slot_offset; } ;
struct arg_data {TYPE_3__ locate; } ;
typedef scalar_t__ rtx ;


 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 int SET_BIT (int ,int) ;
 scalar_t__ check_sibcall_argument_overlap_1 (int ) ;
 scalar_t__ get_insns () ;
 int stored_args_map ;

__attribute__((used)) static int
check_sibcall_argument_overlap (rtx insn, struct arg_data *arg, int mark_stored_args_map)
{
  int low, high;

  if (insn == NULL_RTX)
    insn = get_insns ();
  else
    insn = NEXT_INSN (insn);

  for (; insn; insn = NEXT_INSN (insn))
    if (INSN_P (insn)
 && check_sibcall_argument_overlap_1 (PATTERN (insn)))
      break;

  if (mark_stored_args_map)
    {



      low = arg->locate.slot_offset.constant;


      for (high = low + arg->locate.size.constant; low < high; low++)
 SET_BIT (stored_args_map, low);
    }
  return insn != NULL_RTX;
}
