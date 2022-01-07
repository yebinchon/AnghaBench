
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_arch_info {unsigned long mach; } ;


 struct bfd_arch_info* TARGET_ARCHITECTURE ;
 unsigned long bfd_get_mach (int *) ;
 int error (char*) ;
 int * exec_bfd ;

__attribute__((used)) static unsigned long
default_gcore_mach (void)
{

  return 0;
}
