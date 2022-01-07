
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int ignore_hazard_length_p; } ;


 scalar_t__ CALL_P (int ) ;



 scalar_t__ INSN_CODE (int ) ;
 scalar_t__ JUMP_P (int ) ;
 scalar_t__ TARGET_MIPS16 ;
 TYPE_2__* cfun ;
 int get_attr_hazard (int ) ;
 scalar_t__ simplejump_p (int ) ;

int
mips_adjust_insn_length (rtx insn, int length)
{



  if (CALL_P (insn) || (TARGET_MIPS16 ? simplejump_p (insn) : JUMP_P (insn)))
    length += 4;


  if (!cfun->machine->ignore_hazard_length_p && INSN_CODE (insn) >= 0)
    switch (get_attr_hazard (insn))
      {
      case 128:
 break;

      case 130:
 length += 4;
 break;

      case 129:
 length += 8;
 break;
      }


  if (TARGET_MIPS16)
    length /= 2;

  return length;
}
