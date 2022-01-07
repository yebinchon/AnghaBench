
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int as_fatal (int ) ;
 unsigned long bfd_mach_i386_i386 ;
 unsigned long bfd_mach_x86_64 ;
 int default_arch ;
 int strcmp (int ,char*) ;

unsigned long
i386_mach ()
{
  if (!strcmp (default_arch, "x86_64"))
    return bfd_mach_x86_64;
  else if (!strcmp (default_arch, "i386"))
    return bfd_mach_i386_i386;
  else
    as_fatal (_("Unknown architecture"));
}
