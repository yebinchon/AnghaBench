
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int unwind_dummy_id; } ;
typedef int gdbarch_unwind_dummy_id_ftype ;



void
set_gdbarch_unwind_dummy_id (struct gdbarch *gdbarch,
                             gdbarch_unwind_dummy_id_ftype unwind_dummy_id)
{
  gdbarch->unwind_dummy_id = unwind_dummy_id;
}
