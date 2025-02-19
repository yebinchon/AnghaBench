
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch_tdep {size_t fp_model; } ;
struct cmd_list_element {int dummy; } ;
struct TYPE_2__ {scalar_t__ arch; } ;


 scalar_t__ ARM_FLOAT_AUTO ;
 scalar_t__ arm_fp_model ;
 scalar_t__ bfd_arch_arm ;
 int current_gdbarch ;
 int * fp_model_strings ;
 TYPE_1__* gdbarch_bfd_arch_info (int ) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int printf_filtered (char*,int ) ;

__attribute__((used)) static void
show_fp_model (char *args, int from_tty,
        struct cmd_list_element *c)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  if (arm_fp_model == ARM_FLOAT_AUTO
      && gdbarch_bfd_arch_info (current_gdbarch)->arch == bfd_arch_arm)
    printf_filtered ("  - the default for the current ABI is \"%s\".\n",
       fp_model_strings[tdep->fp_model]);
}
