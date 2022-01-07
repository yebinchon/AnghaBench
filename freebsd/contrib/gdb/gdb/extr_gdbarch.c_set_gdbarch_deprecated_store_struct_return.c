
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_store_struct_return; } ;
typedef int gdbarch_deprecated_store_struct_return_ftype ;



void
set_gdbarch_deprecated_store_struct_return (struct gdbarch *gdbarch,
                                            gdbarch_deprecated_store_struct_return_ftype deprecated_store_struct_return)
{
  gdbarch->deprecated_store_struct_return = deprecated_store_struct_return;
}
