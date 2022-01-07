
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 unsigned int EF_ARM_EABI_VER4 ;
 unsigned int EF_ARM_EABI_VER5 ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
elf32_arm_versions_compatible (unsigned iver, unsigned over)
{


  if ((iver == EF_ARM_EABI_VER4 && over == EF_ARM_EABI_VER5)
      || (iver == EF_ARM_EABI_VER5 && over == EF_ARM_EABI_VER4))
    return TRUE;

  return (iver == over);
}
