
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum vfp_reg_pos { ____Placeholder_vfp_reg_pos } vfp_reg_pos ;
struct TYPE_2__ {int instruction; } ;


 scalar_t__ ARM_CPU_HAS_FEATURE (int ,int ) ;
 int ARM_MERGE_FEATURE_SETS (int ,int ,int ) ;






 int _ (char*) ;
 int abort () ;
 int arm_arch_used ;
 int cpu_variant ;
 int first_error (int ) ;
 int fpu_vfp_ext_v3 ;
 TYPE_1__ inst ;
 int thumb_arch_used ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static void
encode_arm_vfp_reg (int reg, enum vfp_reg_pos pos)
{
  if ((pos == 133 || pos == 131 || pos == 132)
      && reg > 15)
    {
      if (ARM_CPU_HAS_FEATURE (cpu_variant, fpu_vfp_ext_v3))
        {
          if (thumb_mode)
            ARM_MERGE_FEATURE_SETS (thumb_arch_used, thumb_arch_used,
                                    fpu_vfp_ext_v3);
          else
            ARM_MERGE_FEATURE_SETS (arm_arch_used, arm_arch_used,
                                    fpu_vfp_ext_v3);
        }
      else
        {
          first_error (_("D register out of range for selected VFP version"));
          return;
        }
    }

  switch (pos)
    {
    case 130:
      inst.instruction |= ((reg >> 1) << 12) | ((reg & 1) << 22);
      break;

    case 128:
      inst.instruction |= ((reg >> 1) << 16) | ((reg & 1) << 7);
      break;

    case 129:
      inst.instruction |= ((reg >> 1) << 0) | ((reg & 1) << 5);
      break;

    case 133:
      inst.instruction |= ((reg & 15) << 12) | ((reg >> 4) << 22);
      break;

    case 131:
      inst.instruction |= ((reg & 15) << 16) | ((reg >> 4) << 7);
      break;

    case 132:
      inst.instruction |= (reg & 15) | ((reg >> 4) << 5);
      break;

    default:
      abort ();
    }
}
