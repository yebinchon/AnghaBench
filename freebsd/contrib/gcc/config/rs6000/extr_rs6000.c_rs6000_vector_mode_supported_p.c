
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ALTIVEC_VECTOR_MODE (int) ;
 scalar_t__ SPE_VECTOR_MODE (int) ;
 scalar_t__ TARGET_ALTIVEC ;
 scalar_t__ TARGET_SPE ;

__attribute__((used)) static bool
rs6000_vector_mode_supported_p (enum machine_mode mode)
{

  if (TARGET_SPE && SPE_VECTOR_MODE (mode))
    return 1;

  else if (TARGET_ALTIVEC && ALTIVEC_VECTOR_MODE (mode))
    return 1;

  else
    return 0;
}
