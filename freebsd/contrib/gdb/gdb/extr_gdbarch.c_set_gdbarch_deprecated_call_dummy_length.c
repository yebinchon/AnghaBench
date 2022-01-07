
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_call_dummy_length; } ;



void
set_gdbarch_deprecated_call_dummy_length (struct gdbarch *gdbarch,
                                          int deprecated_call_dummy_length)
{
  gdbarch->deprecated_call_dummy_length = deprecated_call_dummy_length;
}
