
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TARGET_EXPLICIT_RELOCS ;
 scalar_t__ TARGET_MIPS16 ;
 scalar_t__ TARGET_VR4130_ALIGN ;
 scalar_t__ TUNE_MIPS4130 ;
 int dbr_schedule (int ) ;
 int get_insns () ;
 int mips16_lay_out_constants () ;
 int mips_avoid_hazards () ;
 scalar_t__ mips_flag_delayed_branch ;
 int vr4130_align_insns () ;

__attribute__((used)) static void
mips_reorg (void)
{
  if (TARGET_MIPS16)
    mips16_lay_out_constants ();
  else if (TARGET_EXPLICIT_RELOCS)
    {
      if (mips_flag_delayed_branch)
 dbr_schedule (get_insns ());
      mips_avoid_hazards ();
      if (TUNE_MIPS4130 && TARGET_VR4130_ALIGN)
 vr4130_align_insns ();
    }
}
