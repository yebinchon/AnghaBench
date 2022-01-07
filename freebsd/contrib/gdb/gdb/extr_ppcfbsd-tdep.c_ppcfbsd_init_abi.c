
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int wordsize; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int ppc64_fbsd_convert_from_func_ptr_addr ;
 int ppc64_fbsd_pc_in_sigtramp ;
 int ppc64_skip_trampoline_code ;
 int ppcfbsd_pc_in_sigtramp ;
 int ppcfbsd_regset_from_core_section ;
 int ppcfbsd_return_value ;
 int set_gdbarch_convert_from_func_ptr_addr (struct gdbarch*,int ) ;
 int set_gdbarch_long_double_bit (struct gdbarch*,int) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_regset_from_core_section (struct gdbarch*,int ) ;
 int set_gdbarch_return_value (struct gdbarch*,int ) ;
 int set_gdbarch_skip_trampoline_code (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int svr4_ilp32_fetch_link_map_offsets ;
 int svr4_lp64_fetch_link_map_offsets ;

__attribute__((used)) static void
ppcfbsd_init_abi (struct gdbarch_info info,
                  struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  set_gdbarch_long_double_bit (gdbarch, 64);

  if (tdep->wordsize == 4)
    {
      set_gdbarch_pc_in_sigtramp (gdbarch, ppcfbsd_pc_in_sigtramp);
      set_gdbarch_return_value (gdbarch, ppcfbsd_return_value);
      set_solib_svr4_fetch_link_map_offsets (gdbarch,
          svr4_ilp32_fetch_link_map_offsets);
    }

  if (tdep->wordsize == 8)
    {
      set_gdbarch_pc_in_sigtramp (gdbarch, ppc64_fbsd_pc_in_sigtramp);
      set_gdbarch_convert_from_func_ptr_addr
        (gdbarch, ppc64_fbsd_convert_from_func_ptr_addr);

      set_gdbarch_skip_trampoline_code (gdbarch, ppc64_skip_trampoline_code);

      set_solib_svr4_fetch_link_map_offsets (gdbarch,
          svr4_lp64_fetch_link_map_offsets);
    }

  set_gdbarch_regset_from_core_section (gdbarch,
     ppcfbsd_regset_from_core_section);
}
