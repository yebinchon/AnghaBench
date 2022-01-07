
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_phnum; } ;
typedef int FILE ;
typedef int Elf_Internal_Phdr ;


 int _ (char*) ;
 int * cmalloc (int ,int) ;
 TYPE_1__ elf_header ;
 int error (int ) ;
 int free (int *) ;
 scalar_t__ get_32bit_program_headers (int *,int *) ;
 scalar_t__ get_64bit_program_headers (int *,int *) ;
 scalar_t__ is_32bit_elf ;
 int * program_headers ;

__attribute__((used)) static int
get_program_headers (FILE *file)
{
  Elf_Internal_Phdr *phdrs;


  if (program_headers != ((void*)0))
    return 1;

  phdrs = cmalloc (elf_header.e_phnum, sizeof (Elf_Internal_Phdr));

  if (phdrs == ((void*)0))
    {
      error (_("Out of memory\n"));
      return 0;
    }

  if (is_32bit_elf
      ? get_32bit_program_headers (file, phdrs)
      : get_64bit_program_headers (file, phdrs))
    {
      program_headers = phdrs;
      return 1;
    }

  free (phdrs);
  return 0;
}
