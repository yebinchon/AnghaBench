
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ e_type; scalar_t__ e_phnum; } ;
typedef int FILE ;


 scalar_t__ ET_CORE ;
 char* _ (char*) ;
 int do_notes ;
 TYPE_1__ elf_header ;
 int printf (char*) ;
 int process_corefile_note_segments (int *) ;
 int process_note_sections (int *) ;

__attribute__((used)) static int
process_notes (FILE *file)
{

  if (! do_notes)
    return 1;

  if (elf_header.e_type != ET_CORE)
    return process_note_sections (file);


  if (elf_header.e_phnum > 0)
    return process_corefile_note_segments (file);

  printf (_("No note segments present in the core file.\n"));
  return 1;
}
