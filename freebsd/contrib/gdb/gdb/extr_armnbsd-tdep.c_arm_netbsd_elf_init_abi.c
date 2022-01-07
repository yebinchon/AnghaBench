
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int fp_model; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int ARM_FLOAT_SOFT_VFP ;
 int arm_netbsd_init_abi_common (struct gdbarch_info,struct gdbarch*) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int nbsd_ilp32_solib_svr4_fetch_link_map_offsets ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;

__attribute__((used)) static void
arm_netbsd_elf_init_abi (struct gdbarch_info info,
    struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  arm_netbsd_init_abi_common (info, gdbarch);

  set_solib_svr4_fetch_link_map_offsets (gdbarch,
                                nbsd_ilp32_solib_svr4_fetch_link_map_offsets);

  tdep->fp_model = ARM_FLOAT_SOFT_VFP;
}
