
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int parm_boundary; } ;



void
set_gdbarch_parm_boundary (struct gdbarch *gdbarch,
                           int parm_boundary)
{
  gdbarch->parm_boundary = parm_boundary;
}
