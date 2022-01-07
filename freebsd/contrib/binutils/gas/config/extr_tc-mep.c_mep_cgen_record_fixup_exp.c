
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fragS ;
typedef int fixS ;
typedef int expressionS ;
typedef int CGEN_OPERAND ;
typedef int CGEN_INSN ;


 int * gas_cgen_record_fixup_exp (int *,int,int const*,int,int const*,int,int *) ;

fixS *
mep_cgen_record_fixup_exp (fragS *frag,
      int where,
      const CGEN_INSN *insn,
      int length,
      const CGEN_OPERAND *operand,
      int opinfo,
      expressionS *exp)
{
  fixS * fixP = gas_cgen_record_fixup_exp (frag, where, insn, length,
        operand, opinfo, exp);
  return fixP;
}
