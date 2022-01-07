
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_arch_info {int arch; } ;
typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;


 struct bfd_arch_info* TARGET_ARCHITECTURE ;
 int bfd_get_arch (int *) ;
 int error (char*) ;
 int * exec_bfd ;

__attribute__((used)) static enum bfd_architecture
default_gcore_arch (void)
{






  if (exec_bfd == ((void*)0))
    error ("Can't find bfd architecture for corefile (need execfile).");

  return bfd_get_arch (exec_bfd);
}
