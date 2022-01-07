
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {int * obfd; } ;


 int bfd_get_symbol_leading_char (int *) ;
 TYPE_1__* symfile_objfile ;

__attribute__((used)) static int
get_symbol_leading_char (bfd *abfd)
{
  if (abfd != ((void*)0))
    return bfd_get_symbol_leading_char (abfd);
  if (symfile_objfile != ((void*)0) && symfile_objfile->obfd != ((void*)0))
    return bfd_get_symbol_leading_char (symfile_objfile->obfd);
  return 0;
}
