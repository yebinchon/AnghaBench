
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_call_dummy_start_offset; } ;
typedef int CORE_ADDR ;



void
set_gdbarch_deprecated_call_dummy_start_offset (struct gdbarch *gdbarch,
                                                CORE_ADDR deprecated_call_dummy_start_offset)
{
  gdbarch->deprecated_call_dummy_start_offset = deprecated_call_dummy_start_offset;
}
