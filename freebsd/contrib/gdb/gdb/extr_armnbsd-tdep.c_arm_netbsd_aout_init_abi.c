
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int fp_model; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int ARM_FLOAT_SOFT_FPA ;
 int arm_netbsd_aout_in_solib_call_trampoline ;
 int arm_netbsd_init_abi_common (struct gdbarch_info,struct gdbarch*) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;

__attribute__((used)) static void
arm_netbsd_aout_init_abi (struct gdbarch_info info,
     struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  arm_netbsd_init_abi_common (info, gdbarch);

  set_gdbarch_in_solib_call_trampoline
    (gdbarch, arm_netbsd_aout_in_solib_call_trampoline);
  tdep->fp_model = ARM_FLOAT_SOFT_FPA;
}
