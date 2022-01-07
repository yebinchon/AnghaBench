
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cond; int uncond_value; int instruction; } ;


 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 int BAD_COND ;
 int BAD_FPU ;
 scalar_t__ COND_ALWAYS ;
 int FAIL ;
 unsigned int NEON_CHECK_ARCH ;
 unsigned int NEON_CHECK_CC ;
 int SUCCESS ;
 int _ (int ) ;
 int cpu_variant ;
 int first_error (int ) ;
 int fpu_neon_ext_v1 ;
 TYPE_1__ inst ;
 int thumb_mode ;

__attribute__((used)) static int
vfp_or_neon_is_neon (unsigned check)
{

  if (!thumb_mode && (check & NEON_CHECK_CC))
    {
      if (inst.cond != COND_ALWAYS)
        {
          first_error (_(BAD_COND));
          return FAIL;
        }
      if (inst.uncond_value != -1)
        inst.instruction |= inst.uncond_value << 28;
    }

  if ((check & NEON_CHECK_ARCH)
      && !ARM_CPU_HAS_FEATURE (cpu_variant, fpu_neon_ext_v1))
    {
      first_error (_(BAD_FPU));
      return FAIL;
    }

  return SUCCESS;
}
