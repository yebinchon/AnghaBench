
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_stack_align; } ;
typedef int gdbarch_deprecated_stack_align_ftype ;



void
set_gdbarch_deprecated_stack_align (struct gdbarch *gdbarch,
                                    gdbarch_deprecated_stack_align_ftype deprecated_stack_align)
{
  gdbarch->deprecated_stack_align = deprecated_stack_align;
}
