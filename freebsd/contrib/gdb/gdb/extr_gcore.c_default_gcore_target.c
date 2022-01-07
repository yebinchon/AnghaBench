
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bfd_get_target (int *) ;
 int * exec_bfd ;

__attribute__((used)) static char *
default_gcore_target (void)
{

  if (exec_bfd == ((void*)0))
    return ((void*)0);
  else
    return bfd_get_target (exec_bfd);
}
