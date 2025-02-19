
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_5__ {unsigned int e_phnum; } ;
struct TYPE_4__ {scalar_t__ p_type; scalar_t__ p_filesz; scalar_t__ p_offset; } ;
typedef int FILE ;
typedef TYPE_1__ Elf_Internal_Phdr ;


 scalar_t__ PT_NOTE ;
 TYPE_3__ elf_header ;
 int get_program_headers (int *) ;
 int process_corefile_note_segment (int *,int ,int ) ;
 TYPE_1__* program_headers ;

__attribute__((used)) static int
process_corefile_note_segments (FILE *file)
{
  Elf_Internal_Phdr *segment;
  unsigned int i;
  int res = 1;

  if (! get_program_headers (file))
      return 0;

  for (i = 0, segment = program_headers;
       i < elf_header.e_phnum;
       i++, segment++)
    {
      if (segment->p_type == PT_NOTE)
 res &= process_corefile_note_segment (file,
           (bfd_vma) segment->p_offset,
           (bfd_vma) segment->p_filesz);
    }

  return res;
}
