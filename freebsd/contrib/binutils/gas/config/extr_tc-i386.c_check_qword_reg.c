
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* operand_types; int name; } ;
struct TYPE_8__ {int operands; int* types; int suffix; TYPE_3__* op; TYPE_1__ tm; } ;
struct TYPE_7__ {TYPE_2__* regs; } ;
struct TYPE_6__ {int reg_name; } ;


 int Acc ;
 int Reg16 ;
 int Reg32 ;
 int Reg8 ;
 int _ (char*) ;
 int as_bad (int ,int ,int ,int ,...) ;
 TYPE_4__ i ;
 int register_prefix ;

__attribute__((used)) static int
check_qword_reg (void)
{
  int op;

  for (op = i.operands; --op >= 0; )


    if ((i.types[op] & Reg8) != 0
 && (i.tm.operand_types[op] & (Reg16 | Reg32 | Acc)) != 0)
      {
 as_bad (_("`%s%s' not allowed with `%s%c'"),
  register_prefix,
  i.op[op].regs->reg_name,
  i.tm.name,
  i.suffix);
 return 0;
      }

    else if (((i.types[op] & Reg16) != 0
       || (i.types[op] & Reg32) != 0)
      && (i.tm.operand_types[op] & (Reg32 | Acc)) != 0)
      {


 as_bad (_("Incorrect register `%s%s' used with `%c' suffix"),
  register_prefix, i.op[op].regs->reg_name,
  i.suffix);
 return 0;
      }
  return 1;
}
