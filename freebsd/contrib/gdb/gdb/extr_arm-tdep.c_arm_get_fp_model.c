
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch {int dummy; } ;
typedef enum arm_float_model { ____Placeholder_arm_float_model } arm_float_model ;
struct TYPE_2__ {int fp_model; } ;


 scalar_t__ ARM_FLOAT_AUTO ;
 scalar_t__ arm_fp_model ;
 TYPE_1__* gdbarch_tdep (struct gdbarch*) ;

enum arm_float_model
arm_get_fp_model (struct gdbarch *gdbarch)
{
  if (arm_fp_model == ARM_FLOAT_AUTO)
    return gdbarch_tdep (gdbarch)->fp_model;

  return arm_fp_model;
}
