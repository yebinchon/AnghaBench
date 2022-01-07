
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mips_cl_insn {TYPE_1__* insn_mo; } ;
struct TYPE_4__ {int mips16; } ;
struct TYPE_3__ {unsigned long pinfo; int name; } ;


 int EXTRACT_OPERAND (int ,struct mips_cl_insn const) ;
 int FS ;
 int FT ;
 scalar_t__ INSN2_USES_REG (int ,int ) ;
 unsigned long INSN_COP ;
 unsigned long INSN_COPROC_MEMORY_DELAY ;
 unsigned long INSN_COPROC_MOVE_DELAY ;
 unsigned long INSN_LOAD_COPROC_DELAY ;
 unsigned long INSN_LOAD_MEMORY_DELAY ;
 unsigned long INSN_READ_COND_CODE ;
 unsigned long INSN_READ_HI ;
 unsigned long INSN_READ_LO ;
 unsigned long INSN_WRITE_COND_CODE ;
 unsigned long INSN_WRITE_FPR_S ;
 unsigned long INSN_WRITE_FPR_T ;
 unsigned long INSN_WRITE_GPR_T ;
 unsigned long INSN_WRITE_HI ;
 unsigned long INSN_WRITE_LO ;
 scalar_t__ MF_HILO_INSN (unsigned long) ;
 int MIPS_FP_REG ;
 int MIPS_GR_REG ;
 unsigned int NUM_FIX_VR4120_CLASSES ;
 int RD ;
 int RT ;
 unsigned int classify_vr4120_insn (int ) ;
 int cop_interlocks ;
 int cop_mem_interlocks ;
 int gpr_interlocks ;
 int hilo_interlocks ;
 int know (unsigned long) ;
 scalar_t__ mips_7000_hilo_fix ;
 scalar_t__ mips_fix_vr4120 ;
 TYPE_2__ mips_opts ;
 int* vr4120_conflicts ;

__attribute__((used)) static unsigned int
insns_between (const struct mips_cl_insn *insn1,
        const struct mips_cl_insn *insn2)
{
  unsigned long pinfo1, pinfo2;





  pinfo1 = insn1->insn_mo->pinfo;
  pinfo2 = insn2 ? insn2->insn_mo->pinfo : ~0U;






  if (!hilo_interlocks)
    {
      if ((pinfo1 & INSN_READ_LO) && (pinfo2 & INSN_WRITE_LO))
 return 2;
      if ((pinfo1 & INSN_READ_HI) && (pinfo2 & INSN_WRITE_HI))
 return 2;
    }



  if (mips_7000_hilo_fix
      && MF_HILO_INSN (pinfo1)
      && (insn2 == ((void*)0) || insn_uses_reg (insn2, EXTRACT_OPERAND (RD, *insn1), MIPS_GR_REG)))
    return 2;



  if (mips_fix_vr4120)
    {
      unsigned int class1, class2;

      class1 = classify_vr4120_insn (insn1->insn_mo->name);
      if (class1 != NUM_FIX_VR4120_CLASSES && vr4120_conflicts[class1] != 0)
 {
   if (insn2 == ((void*)0))
     return 1;
   class2 = classify_vr4120_insn (insn2->insn_mo->name);
   if (vr4120_conflicts[class1] & (1 << class2))
     return 1;
 }
    }

  if (!mips_opts.mips16)
    {



      if ((!gpr_interlocks && (pinfo1 & INSN_LOAD_MEMORY_DELAY))
   || (!cop_interlocks && (pinfo1 & INSN_LOAD_COPROC_DELAY)))
 {
   know (pinfo1 & INSN_WRITE_GPR_T);
   if ((insn2 == ((void*)0) || insn_uses_reg (insn2, EXTRACT_OPERAND (RT, *insn1), MIPS_GR_REG)))
     return 1;
 }
      else if ((!cop_interlocks && (pinfo1 & INSN_COPROC_MOVE_DELAY))
        || (!cop_mem_interlocks && (pinfo1 & INSN_COPROC_MEMORY_DELAY)))
 {



   if (pinfo1 & INSN_WRITE_FPR_T)
     {
       if ((insn2 == ((void*)0) || insn_uses_reg (insn2, EXTRACT_OPERAND (FT, *insn1), MIPS_FP_REG)))
  return 1;
     }
   else if (pinfo1 & INSN_WRITE_FPR_S)
     {
       if ((insn2 == ((void*)0) || insn_uses_reg (insn2, EXTRACT_OPERAND (FS, *insn1), MIPS_FP_REG)))
  return 1;
     }
   else
     {


       if ((pinfo1 & INSN_WRITE_COND_CODE)
    && (pinfo2 & INSN_READ_COND_CODE))
  return 2;




       if (pinfo2 & INSN_COP)
  return 1;
     }
 }






      else if (!cop_interlocks
        && (pinfo1 & INSN_WRITE_COND_CODE)
        && (pinfo2 & INSN_READ_COND_CODE))
 return 1;
    }



  return 0;
}
