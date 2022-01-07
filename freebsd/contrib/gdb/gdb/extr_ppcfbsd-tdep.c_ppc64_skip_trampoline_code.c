
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int PPC64_STANDARD_LINKAGE_LEN ;
 scalar_t__ insns_match_pattern (int ,int ,unsigned int*) ;
 int ppc64_standard_linkage ;
 int ppc64_standard_linkage_target (int ,unsigned int*) ;

__attribute__((used)) static CORE_ADDR
ppc64_skip_trampoline_code (CORE_ADDR pc)
{
  unsigned int ppc64_standard_linkage_insn[PPC64_STANDARD_LINKAGE_LEN];

  if (insns_match_pattern (pc, ppc64_standard_linkage,
                           ppc64_standard_linkage_insn))
    return ppc64_standard_linkage_target (pc, ppc64_standard_linkage_insn);
  else
    return 0;
}
