
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int e_flags; } ;
typedef int FILE ;


 int ARRAY_SIZE (char**) ;
 int BFD_ASSERT (int) ;
 int EF_MEP_CPU_MASK ;
 int EF_MEP_INDEX_MASK ;
 int TRUE ;
 char* _ (char*) ;
 int _bfd_elf_print_private_bfd_data (int *,void*) ;
 char** config_names ;
 char** core_names ;
 TYPE_1__* elf_elfheader (int *) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;

__attribute__((used)) static bfd_boolean
mep_elf_print_private_bfd_data (bfd * abfd, void * ptr)
{
  FILE * file = (FILE *) ptr;
  flagword flags, partial_flags;

  BFD_ASSERT (abfd != ((void*)0) && ptr != ((void*)0));


  _bfd_elf_print_private_bfd_data (abfd, ptr);

  flags = elf_elfheader (abfd)->e_flags;
  fprintf (file, _("private flags = 0x%lx"), (long)flags);

  partial_flags = (flags & EF_MEP_CPU_MASK) >> 24;
  if (partial_flags < ARRAY_SIZE (core_names))
    fprintf (file, "  core: %s", core_names[(long)partial_flags]);

  partial_flags = flags & EF_MEP_INDEX_MASK;
  if (partial_flags < ARRAY_SIZE (config_names))
    fprintf (file, "  me_module: %s", config_names[(long)partial_flags]);

  fputc ('\n', file);

  return TRUE;
}
