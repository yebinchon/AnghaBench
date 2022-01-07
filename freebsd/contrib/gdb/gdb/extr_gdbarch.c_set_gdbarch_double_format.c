
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {struct floatformat const* double_format; } ;
struct floatformat {int dummy; } ;



void
set_gdbarch_double_format (struct gdbarch *gdbarch,
                           const struct floatformat * double_format)
{
  gdbarch->double_format = double_format;
}
