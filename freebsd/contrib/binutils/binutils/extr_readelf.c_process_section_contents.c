
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int e_shnum; } ;
typedef int FILE ;
typedef int Elf_Internal_Shdr ;


 int DEBUG_DUMP ;
 int DISASS_DUMP ;
 int HEX_DUMP ;
 int _ (char*) ;
 int disassemble_section (int *,int *) ;
 int display_debug_section (int *,int *) ;
 int do_dump ;
 int dump_section (int *,int *) ;
 int* dump_sects ;
 TYPE_1__ elf_header ;
 int initialise_dumps_byname () ;
 unsigned int num_dump_sects ;
 int * section_headers ;
 int warn (int ,unsigned int) ;

__attribute__((used)) static void
process_section_contents (FILE *file)
{
  Elf_Internal_Shdr *section;
  unsigned int i;

  if (! do_dump)
    return;

  initialise_dumps_byname ();

  for (i = 0, section = section_headers;
       i < elf_header.e_shnum && i < num_dump_sects;
       i++, section++)
    {




      if (dump_sects[i] & HEX_DUMP)
 dump_section (section, file);

      if (dump_sects[i] & DEBUG_DUMP)
 display_debug_section (section, file);
    }



  while (i++ < num_dump_sects)
    if (dump_sects[i])
      warn (_("Section %d was not dumped because it does not exist!\n"), i);
}
