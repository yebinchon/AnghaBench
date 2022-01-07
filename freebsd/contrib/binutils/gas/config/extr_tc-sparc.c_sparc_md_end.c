
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_arch_sparc ;
 unsigned long bfd_mach_sparc ;
 unsigned long bfd_mach_sparc_sparclet ;
 unsigned long bfd_mach_sparc_v8plus ;
 unsigned long bfd_mach_sparc_v8plusa ;
 unsigned long bfd_mach_sparc_v8plusb ;
 unsigned long bfd_mach_sparc_v9 ;
 unsigned long bfd_mach_sparc_v9a ;
 unsigned long bfd_mach_sparc_v9b ;
 int bfd_set_arch_mach (int ,int ,unsigned long) ;
 int current_architecture ;
 int sparc_arch_size ;
 int stdoutput ;

void
sparc_md_end ()
{
  unsigned long mach = bfd_mach_sparc;

  if (sparc_arch_size == 64)
    switch (current_architecture)
      {
      case 129: mach = bfd_mach_sparc_v9a; break;
      case 128: mach = bfd_mach_sparc_v9b; break;
      default: mach = bfd_mach_sparc_v9; break;
      }
  else
    switch (current_architecture)
      {
      case 131: mach = bfd_mach_sparc_sparclet; break;
      case 130: mach = bfd_mach_sparc_v8plus; break;
      case 129: mach = bfd_mach_sparc_v8plusa; break;
      case 128: mach = bfd_mach_sparc_v8plusb; break;



      default: break;
      }
  bfd_set_arch_mach (stdoutput, bfd_arch_sparc, mach);
}
