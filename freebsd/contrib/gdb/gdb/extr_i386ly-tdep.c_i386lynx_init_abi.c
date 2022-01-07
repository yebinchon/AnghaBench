
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int i386lynx_saved_pc_after_call ;
 int set_gdbarch_deprecated_saved_pc_after_call (struct gdbarch*,int ) ;

__attribute__((used)) static void
i386lynx_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  set_gdbarch_deprecated_saved_pc_after_call (gdbarch, i386lynx_saved_pc_after_call);
}
