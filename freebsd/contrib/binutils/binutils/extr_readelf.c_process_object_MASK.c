#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct group_list {struct group_list* next; struct group_list* root; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  cmdline_dump_sects ; 
 scalar_t__ do_arch ; 
 scalar_t__ do_dump ; 
 scalar_t__ do_reloc ; 
 scalar_t__ do_syms ; 
 scalar_t__ do_unwind ; 
 int /*<<< orphan*/  do_using_dynamic ; 
 scalar_t__ do_version ; 
 int /*<<< orphan*/  dump_sects ; 
 scalar_t__* dynamic_info ; 
 struct group_list* dynamic_strings ; 
 scalar_t__ dynamic_strings_length ; 
 struct group_list* dynamic_symbols ; 
 struct group_list* dynamic_syminfo ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct group_list*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int group_count ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ num_cmdline_dump_sects ; 
 scalar_t__ num_dump_sects ; 
 scalar_t__ num_dynamic_syms ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 struct group_list* program_headers ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct group_list* section_groups ; 
 struct group_list* section_headers ; 
 struct group_list* section_headers_groups ; 
 scalar_t__ show_name ; 
 struct group_list* string_table ; 
 scalar_t__ string_table_length ; 
 scalar_t__* version_info ; 

__attribute__((used)) static int
FUNC25 (char *file_name, FILE *file)
{
  unsigned int i;

  if (! FUNC6 (file))
    {
      FUNC3 (FUNC1("%s: Failed to read file header\n"), file_name);
      return 1;
    }

  /* Initialise per file variables.  */
  for (i = FUNC0 (version_info); i--;)
    version_info[i] = 0;

  for (i = FUNC0 (dynamic_info); i--;)
    dynamic_info[i] = 0;

  /* Process the file.  */
  if (show_name)
    FUNC9 (FUNC1("\nFile: %s\n"), file_name);

  /* Initialise the dump_sects array from the cmdline_dump_sects array.
     Note we do this even if cmdline_dump_sects is empty because we
     must make sure that the dump_sets array is zeroed out before each
     object file is processed.  */
  if (num_dump_sects > num_cmdline_dump_sects)
    FUNC8 (dump_sects, 0, num_dump_sects);

  if (num_cmdline_dump_sects > 0)
    {
      if (num_dump_sects == 0)
	/* A sneaky way of allocating the dump_sects array.  */
	FUNC24 (num_cmdline_dump_sects, 0);

      FUNC2 (num_dump_sects >= num_cmdline_dump_sects);
      FUNC7 (dump_sects, cmdline_dump_sects, num_cmdline_dump_sects);
    }

  if (! FUNC12 ())
    return 1;

  if (! FUNC19 (file))
    {
      /* Without loaded section headers we cannot process lots of
	 things.  */
      do_unwind = do_version = do_dump = do_arch = 0;

      if (! do_using_dynamic)
	do_syms = do_reloc = 0;
    }

  if (! FUNC18 (file))
    {
      /* Without loaded section groups we cannot process unwind.  */
      do_unwind = 0;
    }

  if (FUNC15 (file))
    FUNC11 (file);

  FUNC16 (file);

  FUNC22 (file);

  FUNC20 (file);

  FUNC21 (file);

  FUNC23 (file);

  FUNC17 (file);

  FUNC14 (file);

  FUNC13 (file);

  FUNC10 (file);

  if (program_headers)
    {
      FUNC4 (program_headers);
      program_headers = NULL;
    }

  if (section_headers)
    {
      FUNC4 (section_headers);
      section_headers = NULL;
    }

  if (string_table)
    {
      FUNC4 (string_table);
      string_table = NULL;
      string_table_length = 0;
    }

  if (dynamic_strings)
    {
      FUNC4 (dynamic_strings);
      dynamic_strings = NULL;
      dynamic_strings_length = 0;
    }

  if (dynamic_symbols)
    {
      FUNC4 (dynamic_symbols);
      dynamic_symbols = NULL;
      num_dynamic_syms = 0;
    }

  if (dynamic_syminfo)
    {
      FUNC4 (dynamic_syminfo);
      dynamic_syminfo = NULL;
    }

  if (section_headers_groups)
    {
      FUNC4 (section_headers_groups);
      section_headers_groups = NULL;
    }

  if (section_groups)
    {
      struct group_list *g, *next;

      for (i = 0; i < group_count; i++)
	{
	  for (g = section_groups [i].root; g != NULL; g = next)
	    {
	      next = g->next;
	      FUNC4 (g);
	    }
	}

      FUNC4 (section_groups);
      section_groups = NULL;
    }

  FUNC5 ();

  return 0;
}