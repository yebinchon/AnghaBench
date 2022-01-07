
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_target_read_fp; } ;
typedef int gdbarch_deprecated_target_read_fp_ftype ;



void
set_gdbarch_deprecated_target_read_fp (struct gdbarch *gdbarch,
                                       gdbarch_deprecated_target_read_fp_ftype deprecated_target_read_fp)
{
  gdbarch->deprecated_target_read_fp = deprecated_target_read_fp;
}
