
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET_AAPCS_BASED ;

__attribute__((used)) static bool
arm_cxx_class_data_always_comdat (void)
{


  return !TARGET_AAPCS_BASED;
}
