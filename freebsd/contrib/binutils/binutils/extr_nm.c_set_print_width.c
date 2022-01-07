
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_get_arch_size (int *) ;
 int bfd_get_target (int *) ;
 int print_width ;
 scalar_t__ strcmp (int ,char*) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static void
set_print_width (bfd *file)
{
  print_width = bfd_get_arch_size (file);

  if (print_width == -1)
    {





      if (strstr (bfd_get_target (file), "64") != ((void*)0)
   || strcmp (bfd_get_target (file), "mmo") == 0)
 print_width = 64;
      else
 print_width = 32;
    }
}
