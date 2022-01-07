
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 scalar_t__ berkeley_format ;
 int print_berkeley_format (int *) ;
 int print_sysv_format (int *) ;

__attribute__((used)) static void
print_sizes (bfd *file)
{
  if (berkeley_format)
    print_berkeley_format (file);
  else
    print_sysv_format (file);
}
