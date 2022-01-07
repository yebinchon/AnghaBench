
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdbarch_init_ftype ;
typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;


 int gdbarch_register (int,int *,int *) ;

void
register_gdbarch_init (enum bfd_architecture bfd_architecture,
         gdbarch_init_ftype *init)
{
  gdbarch_register (bfd_architecture, init, ((void*)0));
}
