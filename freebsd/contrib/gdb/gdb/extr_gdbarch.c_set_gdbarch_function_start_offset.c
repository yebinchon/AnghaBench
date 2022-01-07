
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int function_start_offset; } ;
typedef int CORE_ADDR ;



void
set_gdbarch_function_start_offset (struct gdbarch *gdbarch,
                                   CORE_ADDR function_start_offset)
{
  gdbarch->function_start_offset = function_start_offset;
}
