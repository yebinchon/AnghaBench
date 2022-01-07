
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGEN_CPU_OPEN_END ;
 int CGEN_CPU_OPEN_ENDIAN ;
 int CGEN_CPU_OPEN_ISAS ;
 int CGEN_CPU_OPEN_MACHS ;
 int CGEN_ENDIAN_BIG ;
 int CGEN_ENDIAN_LITTLE ;
 int MEP_CONFIG ;
 int MEP_CPU ;
 int MEP_OMASK ;
 int bfd_arch_mep ;
 int bfd_default_set_arch_mach (int ,int ,int ) ;
 int bfd_set_private_flags (int ,int) ;
 int cgen_set_parse_operand_fn (int ,int ) ;
 int gas_cgen_cpu_desc ;
 int gas_cgen_initialize_saved_fixups_array () ;
 int library_flag ;
 int mep_cgen_cpu_open (int ,int ,int ,int ,int ,int ,int ) ;
 int mep_cgen_init_asm (int ) ;
 scalar_t__ mep_config_index ;
 int mep_machine () ;
 int mep_parse_operand ;
 int optbits ;
 int optbitset ;
 int stdoutput ;
 scalar_t__ target_big_endian ;

void
md_begin ()
{
  if (optbits && mep_config_index == 0)
    MEP_OMASK = optbits;
  else
    MEP_OMASK = (MEP_OMASK & ~optbitset) | optbits;


  gas_cgen_cpu_desc = mep_cgen_cpu_open (CGEN_CPU_OPEN_MACHS, 0,
      CGEN_CPU_OPEN_ENDIAN,
      target_big_endian
      ? CGEN_ENDIAN_BIG
      : CGEN_ENDIAN_LITTLE,
      CGEN_CPU_OPEN_ISAS, 0,
      CGEN_CPU_OPEN_END);
  mep_cgen_init_asm (gas_cgen_cpu_desc);


  cgen_set_parse_operand_fn (gas_cgen_cpu_desc, mep_parse_operand);


  bfd_default_set_arch_mach (stdoutput, bfd_arch_mep, mep_machine ());


  bfd_set_private_flags (stdoutput, MEP_CPU | MEP_CONFIG | library_flag);


  gas_cgen_initialize_saved_fixups_array();
}
