
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subsegT ;
typedef int segT ;


 scalar_t__ REG_TYPE_FIRST ;
 scalar_t__ REG_TYPE_MAX ;
 int SEC_DEBUGGING ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 int TARGET_ARCH ;
 scalar_t__ USE_GLOBAL_POINTER_OPT ;
 int _ (char*) ;
 scalar_t__ all_reg_maps ;
 int as_fatal (int ) ;
 int bfd_set_arch_mach (int ,int ,int ) ;
 int bfd_set_gp_size (int ,int ) ;
 int bfd_set_section_alignment (int ,int ,int) ;
 int bfd_set_section_flags (int ,int ,int) ;
 int build_dependency_insn_hsh () ;
 int build_reg_hsh (scalar_t__) ;
 int build_score_ops_hsh () ;
 int * dependency_insn_hsh ;
 int g_switch_value ;
 void* hash_new () ;
 int init_dependency_vector () ;
 int now_seg ;
 int now_subseg ;
 int pdr_seg ;
 int * score_ops_hsh ;
 int stdoutput ;
 int subseg_new (char*,int ) ;
 int subseg_set (int ,int ) ;

void
md_begin (void)
{
  unsigned int i;
  segT seg;
  subsegT subseg;

  if ((score_ops_hsh = hash_new ()) == ((void*)0))
    as_fatal (_("virtual memory exhausted"));

  build_score_ops_hsh ();

  if ((dependency_insn_hsh = hash_new ()) == ((void*)0))
    as_fatal (_("virtual memory exhausted"));

  build_dependency_insn_hsh ();

  for (i = (int)REG_TYPE_FIRST; i < (int)REG_TYPE_MAX; i++)
    build_reg_hsh (all_reg_maps + i);


  init_dependency_vector ();

  bfd_set_arch_mach (stdoutput, TARGET_ARCH, 0);
  seg = now_seg;
  subseg = now_subseg;
  pdr_seg = subseg_new (".pdr", (subsegT) 0);
  (void)bfd_set_section_flags (stdoutput, pdr_seg, SEC_READONLY | SEC_RELOC | SEC_DEBUGGING);
  (void)bfd_set_section_alignment (stdoutput, pdr_seg, 2);
  subseg_set (seg, subseg);

  if (USE_GLOBAL_POINTER_OPT)
    bfd_set_gp_size (stdoutput, g_switch_value);
}
