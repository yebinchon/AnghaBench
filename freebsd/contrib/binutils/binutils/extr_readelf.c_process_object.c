
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_list {struct group_list* next; struct group_list* root; } ;
typedef int FILE ;


 unsigned int NUM_ELEM (scalar_t__*) ;
 char* _ (char*) ;
 int assert (int) ;
 int cmdline_dump_sects ;
 scalar_t__ do_arch ;
 scalar_t__ do_dump ;
 scalar_t__ do_reloc ;
 scalar_t__ do_syms ;
 scalar_t__ do_unwind ;
 int do_using_dynamic ;
 scalar_t__ do_version ;
 int dump_sects ;
 scalar_t__* dynamic_info ;
 struct group_list* dynamic_strings ;
 scalar_t__ dynamic_strings_length ;
 struct group_list* dynamic_symbols ;
 struct group_list* dynamic_syminfo ;
 int error (char*,char*) ;
 int free (struct group_list*) ;
 int free_debug_memory () ;
 int get_file_header (int *) ;
 unsigned int group_count ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (int ,int ,scalar_t__) ;
 scalar_t__ num_cmdline_dump_sects ;
 scalar_t__ num_dump_sects ;
 scalar_t__ num_dynamic_syms ;
 int printf (char*,char*) ;
 int process_arch_specific (int *) ;
 int process_dynamic_section (int *) ;
 int process_file_header () ;
 int process_gnu_liblist (int *) ;
 int process_notes (int *) ;
 scalar_t__ process_program_headers (int *) ;
 int process_relocs (int *) ;
 int process_section_contents (int *) ;
 int process_section_groups (int *) ;
 int process_section_headers (int *) ;
 int process_symbol_table (int *) ;
 int process_syminfo (int *) ;
 int process_unwind (int *) ;
 int process_version_sections (int *) ;
 struct group_list* program_headers ;
 int request_dump (scalar_t__,int ) ;
 struct group_list* section_groups ;
 struct group_list* section_headers ;
 struct group_list* section_headers_groups ;
 scalar_t__ show_name ;
 struct group_list* string_table ;
 scalar_t__ string_table_length ;
 scalar_t__* version_info ;

__attribute__((used)) static int
process_object (char *file_name, FILE *file)
{
  unsigned int i;

  if (! get_file_header (file))
    {
      error (_("%s: Failed to read file header\n"), file_name);
      return 1;
    }


  for (i = NUM_ELEM (version_info); i--;)
    version_info[i] = 0;

  for (i = NUM_ELEM (dynamic_info); i--;)
    dynamic_info[i] = 0;


  if (show_name)
    printf (_("\nFile: %s\n"), file_name);





  if (num_dump_sects > num_cmdline_dump_sects)
    memset (dump_sects, 0, num_dump_sects);

  if (num_cmdline_dump_sects > 0)
    {
      if (num_dump_sects == 0)

 request_dump (num_cmdline_dump_sects, 0);

      assert (num_dump_sects >= num_cmdline_dump_sects);
      memcpy (dump_sects, cmdline_dump_sects, num_cmdline_dump_sects);
    }

  if (! process_file_header ())
    return 1;

  if (! process_section_headers (file))
    {


      do_unwind = do_version = do_dump = do_arch = 0;

      if (! do_using_dynamic)
 do_syms = do_reloc = 0;
    }

  if (! process_section_groups (file))
    {

      do_unwind = 0;
    }

  if (process_program_headers (file))
    process_dynamic_section (file);

  process_relocs (file);

  process_unwind (file);

  process_symbol_table (file);

  process_syminfo (file);

  process_version_sections (file);

  process_section_contents (file);

  process_notes (file);

  process_gnu_liblist (file);

  process_arch_specific (file);

  if (program_headers)
    {
      free (program_headers);
      program_headers = ((void*)0);
    }

  if (section_headers)
    {
      free (section_headers);
      section_headers = ((void*)0);
    }

  if (string_table)
    {
      free (string_table);
      string_table = ((void*)0);
      string_table_length = 0;
    }

  if (dynamic_strings)
    {
      free (dynamic_strings);
      dynamic_strings = ((void*)0);
      dynamic_strings_length = 0;
    }

  if (dynamic_symbols)
    {
      free (dynamic_symbols);
      dynamic_symbols = ((void*)0);
      num_dynamic_syms = 0;
    }

  if (dynamic_syminfo)
    {
      free (dynamic_syminfo);
      dynamic_syminfo = ((void*)0);
    }

  if (section_headers_groups)
    {
      free (section_headers_groups);
      section_headers_groups = ((void*)0);
    }

  if (section_groups)
    {
      struct group_list *g, *next;

      for (i = 0; i < group_count; i++)
 {
   for (g = section_groups [i].root; g != ((void*)0); g = next)
     {
       next = g->next;
       free (g);
     }
 }

      free (section_groups);
      section_groups = ((void*)0);
    }

  free_debug_memory ();

  return 0;
}
