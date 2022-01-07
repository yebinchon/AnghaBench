
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_push_return_address; } ;
typedef int gdbarch_deprecated_push_return_address_ftype ;



void
set_gdbarch_deprecated_push_return_address (struct gdbarch *gdbarch,
                                            gdbarch_deprecated_push_return_address_ftype deprecated_push_return_address)
{
  gdbarch->deprecated_push_return_address = deprecated_push_return_address;
}
