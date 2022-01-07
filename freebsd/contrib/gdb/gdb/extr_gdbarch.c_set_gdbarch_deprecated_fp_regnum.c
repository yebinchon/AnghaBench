
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_fp_regnum; } ;



void
set_gdbarch_deprecated_fp_regnum (struct gdbarch *gdbarch,
                                  int deprecated_fp_regnum)
{
  gdbarch->deprecated_fp_regnum = deprecated_fp_regnum;
}
