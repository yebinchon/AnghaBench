
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int register_bytes_ok; } ;
typedef int gdbarch_register_bytes_ok_ftype ;



void
set_gdbarch_register_bytes_ok (struct gdbarch *gdbarch,
                               gdbarch_register_bytes_ok_ftype register_bytes_ok)
{
  gdbarch->register_bytes_ok = register_bytes_ok;
}
