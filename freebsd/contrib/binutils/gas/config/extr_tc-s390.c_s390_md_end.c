
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_arch_s390 ;
 int bfd_mach_s390_31 ;
 int bfd_mach_s390_64 ;
 int bfd_set_arch_mach (int ,int ,int ) ;
 int s390_arch_size ;
 int stdoutput ;

void
s390_md_end ()
{
  if (s390_arch_size == 64)
    bfd_set_arch_mach (stdoutput, bfd_arch_s390, bfd_mach_s390_64);
  else
    bfd_set_arch_mach (stdoutput, bfd_arch_s390, bfd_mach_s390_31);
}
