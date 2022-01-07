
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;
typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int _bfd_XX_print_private_bfd_data_common (int *,void*) ;
 int fputc (char,int *) ;
 int pe_saved_coff_bfd_print_private_bfd_data (int *,void*) ;

__attribute__((used)) static bfd_boolean
pe_print_private_bfd_data (bfd *abfd, void * vfile)
{
  FILE *file = (FILE *) vfile;

  if (!_bfd_XX_print_private_bfd_data_common (abfd, vfile))
    return FALSE;

  if (pe_saved_coff_bfd_print_private_bfd_data == ((void*)0))
    return TRUE;

  fputc ('\n', file);

  return pe_saved_coff_bfd_print_private_bfd_data (abfd, vfile);
}
