
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int i386obsd_aout_regset_from_core_section ;
 int i386obsd_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int set_gdbarch_regset_from_core_section (struct gdbarch*,int ) ;

__attribute__((used)) static void
i386obsd_aout_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  i386obsd_init_abi (info, gdbarch);


  set_gdbarch_regset_from_core_section
    (gdbarch, i386obsd_aout_regset_from_core_section);
}
