
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {scalar_t__ ppc_gp0_regnum; } ;
typedef scalar_t__ CORE_ADDR ;


 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int insn_d_field (unsigned int) ;
 scalar_t__ insn_ds_field (unsigned int) ;
 scalar_t__ ppc64_desc_entry_point (scalar_t__) ;
 scalar_t__ read_register (scalar_t__) ;

__attribute__((used)) static CORE_ADDR
ppc64_standard_linkage_target (CORE_ADDR pc, unsigned int *insn)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);



  CORE_ADDR desc
    = ((CORE_ADDR) read_register (tdep->ppc_gp0_regnum + 2)
       + (insn_d_field (insn[0]) << 16)
       + insn_ds_field (insn[2]));


  return ppc64_desc_entry_point (desc);
}
