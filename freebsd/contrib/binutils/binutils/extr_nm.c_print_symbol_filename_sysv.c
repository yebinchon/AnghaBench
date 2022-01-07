
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 char* bfd_get_filename (int *) ;
 scalar_t__ filename_per_symbol ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_symbol_filename_sysv (bfd *archive_bfd, bfd *abfd)
{
  if (filename_per_symbol)
    {
      if (archive_bfd)
 printf ("%s:", bfd_get_filename (archive_bfd));
      printf ("%s:", bfd_get_filename (abfd));
    }
}
