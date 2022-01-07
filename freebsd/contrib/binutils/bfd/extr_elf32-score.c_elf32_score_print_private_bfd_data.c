
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int e_flags; } ;
typedef int FILE ;


 int BFD_ASSERT (int) ;
 int EF_SCORE_FIXDEP ;
 int EF_SCORE_PIC ;
 int TRUE ;
 char* _ (char*) ;
 int _bfd_elf_print_private_bfd_data (int *,void*) ;
 TYPE_1__* elf_elfheader (int *) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;

__attribute__((used)) static bfd_boolean
elf32_score_print_private_bfd_data (bfd *abfd, void * ptr)
{
  FILE *file = (FILE *) ptr;

  BFD_ASSERT (abfd != ((void*)0) && ptr != ((void*)0));


  _bfd_elf_print_private_bfd_data (abfd, ptr);


  fprintf (file, _("private flags = %lx:"), elf_elfheader (abfd)->e_flags);
  if (elf_elfheader (abfd)->e_flags & EF_SCORE_PIC)
    {
      fprintf (file, _(" [pic]"));
    }
  if (elf_elfheader (abfd)->e_flags & EF_SCORE_FIXDEP)
    {
      fprintf (file, _(" [fix dep]"));
    }
  fputc ('\n', file);

  return TRUE;
}
