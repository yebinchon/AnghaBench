
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ TARGET_VIS ;
 scalar_t__ VECTOR_MODE_P (int) ;

__attribute__((used)) static bool
sparc_vector_mode_supported_p (enum machine_mode mode)
{
  return TARGET_VIS && VECTOR_MODE_P (mode) ? 1 : 0;
}
