
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mips_cl_insn {TYPE_1__* insn_mo; int noreorder_p; } ;
struct TYPE_4__ {scalar_t__ mips16; } ;
struct TYPE_3__ {int pinfo; int name; } ;


 int EXTRACT_OPERAND (int ,struct mips_cl_insn const) ;
 int INSN_WRITE_HI ;
 int INSN_WRITE_LO ;
 int MAX_VR4130_NOPS ;
 scalar_t__ MF_HILO_INSN (int) ;
 size_t MIPS16_EXTRACT_OPERAND (int ,struct mips_cl_insn const) ;
 int MIPS_GR_REG ;
 int RD ;
 int RX ;
 scalar_t__ insn_uses_reg (struct mips_cl_insn const*,int,int ) ;
 int* mips16_to_32_reg_map ;
 TYPE_2__ mips_opts ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
nops_for_vr4130 (const struct mips_cl_insn *history,
   const struct mips_cl_insn *insn)
{
  int i, j, reg;



  if (insn != 0
      && ((insn->insn_mo->pinfo & (INSN_WRITE_HI | INSN_WRITE_LO)) == 0
   || strcmp (insn->insn_mo->name, "mtlo") == 0
   || strcmp (insn->insn_mo->name, "mthi") == 0))
    return 0;


  for (i = 0; i < MAX_VR4130_NOPS; i++)
    if (!history[i].noreorder_p && MF_HILO_INSN (history[i].insn_mo->pinfo))
      {

 if (mips_opts.mips16)
   reg = mips16_to_32_reg_map[MIPS16_EXTRACT_OPERAND (RX, history[i])];
 else
   reg = EXTRACT_OPERAND (RD, history[i]);


 if (insn != ((void*)0) && insn_uses_reg (insn, reg, MIPS_GR_REG))
   return 0;


 for (j = 0; j < i; j++)
   if (insn_uses_reg (&history[j], reg, MIPS_GR_REG))
     return 0;

 return MAX_VR4130_NOPS - i;
      }
  return 0;
}
