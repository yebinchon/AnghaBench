
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* bfd_boolean ;
struct TYPE_3__ {unsigned long extension; unsigned long base; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 void* FALSE ;
 void* TRUE ;
 unsigned long bfd_mach_mipsisa32 ;
 unsigned long bfd_mach_mipsisa32r2 ;
 unsigned long bfd_mach_mipsisa64 ;
 unsigned long bfd_mach_mipsisa64r2 ;
 TYPE_1__* mips_mach_extensions ;

__attribute__((used)) static bfd_boolean
mips_mach_extends_p (unsigned long base, unsigned long extension)
{
  size_t i;

  if (extension == base)
    return TRUE;

  if (base == bfd_mach_mipsisa32
      && mips_mach_extends_p (bfd_mach_mipsisa64, extension))
    return TRUE;

  if (base == bfd_mach_mipsisa32r2
      && mips_mach_extends_p (bfd_mach_mipsisa64r2, extension))
    return TRUE;

  for (i = 0; i < ARRAY_SIZE (mips_mach_extensions); i++)
    if (extension == mips_mach_extensions[i].extension)
      {
 extension = mips_mach_extensions[i].base;
 if (extension == base)
   return TRUE;
      }

  return FALSE;
}
