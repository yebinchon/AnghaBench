
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CGEN_INSN ;
typedef int CGEN_BITSET ;
typedef int CGEN_ATTR_VALUE_BITSET_TYPE ;


 int CGEN_INSN_BITSET_ATTR_VALUE (int const*,int ) ;
 int CGEN_INSN_ISA ;
 int cgen_bitset_intersect_p (int *,int *) ;

int
mep_insn_supported_by_isa (const CGEN_INSN *insn, CGEN_ATTR_VALUE_BITSET_TYPE *isa_mask)
{
  CGEN_BITSET insn_isas = CGEN_INSN_BITSET_ATTR_VALUE (insn, CGEN_INSN_ISA);
  return cgen_bitset_intersect_p (& insn_isas, isa_mask);
}
