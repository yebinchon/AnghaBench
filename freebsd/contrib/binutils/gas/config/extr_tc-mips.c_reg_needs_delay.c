
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* insn_mo; } ;
struct TYPE_6__ {int noreorder; } ;
struct TYPE_5__ {unsigned long pinfo; } ;


 unsigned int EXTRACT_OPERAND (int ,TYPE_3__) ;
 unsigned long INSN_LOAD_COPROC_DELAY ;
 unsigned long INSN_LOAD_MEMORY_DELAY ;
 unsigned long INSN_WRITE_GPR_T ;
 int RT ;
 int cop_interlocks ;
 int gpr_interlocks ;
 TYPE_3__* history ;
 int know (unsigned long) ;
 TYPE_2__ mips_opts ;

__attribute__((used)) static int
reg_needs_delay (unsigned int reg)
{
  unsigned long prev_pinfo;

  prev_pinfo = history[0].insn_mo->pinfo;
  if (! mips_opts.noreorder
      && (((prev_pinfo & INSN_LOAD_MEMORY_DELAY)
    && ! gpr_interlocks)
   || ((prev_pinfo & INSN_LOAD_COPROC_DELAY)
       && ! cop_interlocks)))
    {



      know (prev_pinfo & INSN_WRITE_GPR_T);
      if (reg == EXTRACT_OPERAND (RT, history[0]))
 return 1;
    }

  return 0;
}
