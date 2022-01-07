
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extended_symbol_info {int dummy; } ;
typedef int bfd ;


 int SYM_NAME (struct extended_symbol_info*) ;
 scalar_t__ SYM_SIZE (struct extended_symbol_info*) ;
 int SYM_TYPE (struct extended_symbol_info*) ;
 scalar_t__ SYM_VALUE (struct extended_symbol_info*) ;
 scalar_t__ bfd_is_undefined_symclass (int) ;
 int print_symname (char*,int ,int *) ;
 int print_value (int *,scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_symbol_info_posix (struct extended_symbol_info *info, bfd *abfd)
{
  print_symname ("%s ", SYM_NAME (info), abfd);
  printf ("%c ", SYM_TYPE (info));

  if (bfd_is_undefined_symclass (SYM_TYPE (info)))
    printf ("        ");
  else
    {
      print_value (abfd, SYM_VALUE (info));
      printf (" ");
      if (SYM_SIZE (info))
 print_value (abfd, SYM_SIZE (info));
    }
}
