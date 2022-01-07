
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ isvec; } ;


 int FAIL ;
 int SUCCESS ;
 int _ (char*) ;
 int do_vfp_nsyn_opcode (char*) ;
 int first_error (int ) ;
 TYPE_2__ inst ;
 int memset (TYPE_1__*,char,int) ;

__attribute__((used)) static int
do_vfp_nsyn_mrs (void)
{
  if (inst.operands[0].isvec)
    {
      if (inst.operands[1].reg != 1)
        first_error (_("operand 1 must be FPSCR"));
      memset (&inst.operands[0], '\0', sizeof (inst.operands[0]));
      memset (&inst.operands[1], '\0', sizeof (inst.operands[1]));
      do_vfp_nsyn_opcode ("fmstat");
    }
  else if (inst.operands[1].isvec)
    do_vfp_nsyn_opcode ("fmrx");
  else
    return FAIL;

  return SUCCESS;
}
