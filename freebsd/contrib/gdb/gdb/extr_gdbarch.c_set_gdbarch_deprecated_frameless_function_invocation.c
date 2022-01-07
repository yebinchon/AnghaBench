
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_frameless_function_invocation; } ;
typedef int gdbarch_deprecated_frameless_function_invocation_ftype ;



void
set_gdbarch_deprecated_frameless_function_invocation (struct gdbarch *gdbarch,
                                                      gdbarch_deprecated_frameless_function_invocation_ftype deprecated_frameless_function_invocation)
{
  gdbarch->deprecated_frameless_function_invocation = deprecated_frameless_function_invocation;
}
