
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {struct floatformat const* float_format; } ;
struct floatformat {int dummy; } ;



void
set_gdbarch_float_format (struct gdbarch *gdbarch,
                          const struct floatformat * float_format)
{
  gdbarch->float_format = float_format;
}
