
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int base_opcode; int* operand_types; int name; } ;
struct TYPE_8__ {int operands; int* types; int suffix; TYPE_3__ tm; TYPE_2__* op; } ;
struct TYPE_6__ {TYPE_1__* regs; } ;
struct TYPE_5__ {int reg_num; int reg_name; } ;


 scalar_t__ CODE_64BIT ;
 int Control ;
 int Debug ;
 int FloatAcc ;
 int FloatReg ;
 int InOutPortReg ;
 int REGNAM_AL ;
 int REGNAM_AX ;
 int REGNAM_EAX ;
 int Reg ;
 int Reg16 ;
 int Reg8 ;
 int RegMMX ;
 int RegXMM ;
 int SReg2 ;
 int SReg3 ;
 int Test ;
 int WordReg ;
 int _ (char*) ;
 int as_bad (int ,int ,int ,int ,...) ;
 int as_warn (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ flag_code ;
 TYPE_4__ i ;
 scalar_t__ intel_syntax ;
 int quiet_warnings ;
 int register_prefix ;

__attribute__((used)) static int
check_byte_reg (void)
{
  int op;

  for (op = i.operands; --op >= 0;)
    {



      if (i.types[op] & Reg8)
 continue;


      if (intel_syntax
   && (i.tm.base_opcode == 0xfb7
       || i.tm.base_opcode == 0xfb6
       || i.tm.base_opcode == 0x63
       || i.tm.base_opcode == 0xfbe
       || i.tm.base_opcode == 0xfbf))
 continue;


      if (i.tm.base_opcode == 0xf20f38f0)
 continue;

      if ((i.types[op] & WordReg) && i.op[op].regs->reg_num < 4)
 {


   if (flag_code == CODE_64BIT
       && (i.tm.operand_types[op] & InOutPortReg) == 0)
     {
       as_bad (_("Incorrect register `%s%s' used with `%c' suffix"),
        register_prefix, i.op[op].regs->reg_name,
        i.suffix);
       return 0;
     }
   continue;
 }

      if (i.types[op] & (Reg | RegMMX | RegXMM
    | SReg2 | SReg3
    | Control | Debug | Test
    | FloatReg | FloatAcc))
 {
   as_bad (_("`%s%s' not allowed with `%s%c'"),
    register_prefix,
    i.op[op].regs->reg_name,
    i.tm.name,
    i.suffix);
   return 0;
 }
    }
  return 1;
}
