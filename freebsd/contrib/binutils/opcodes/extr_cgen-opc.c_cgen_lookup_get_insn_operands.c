
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGEN_INSN_INT ;
typedef int CGEN_INSN ;
typedef int CGEN_FIELDS ;
typedef int CGEN_CPU_DESC ;


 int cgen_get_insn_operands (int ,int const*,int *,int*) ;
 int * cgen_lookup_insn (int ,int const*,int ,unsigned char*,int,int *,int ) ;

const CGEN_INSN *
cgen_lookup_get_insn_operands (CGEN_CPU_DESC cd,
          const CGEN_INSN *insn,
          CGEN_INSN_INT insn_int_value,

          unsigned char *insn_bytes_value,
          int length,
          int *indices,
          CGEN_FIELDS *fields)
{


  insn = cgen_lookup_insn (cd, insn, insn_int_value, insn_bytes_value,
      length, fields, insn != ((void*)0));
  if (! insn)
    return ((void*)0);

  cgen_get_insn_operands (cd, insn, fields, indices);
  return insn;
}
