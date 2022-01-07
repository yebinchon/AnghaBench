
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int ps_regnum; } ;



void
set_gdbarch_ps_regnum (struct gdbarch *gdbarch,
                       int ps_regnum)
{
  gdbarch->ps_regnum = ps_regnum;
}
