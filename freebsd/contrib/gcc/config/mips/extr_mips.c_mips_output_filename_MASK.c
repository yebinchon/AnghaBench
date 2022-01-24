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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ DBX_DEBUG ; 
 scalar_t__ DWARF2_DEBUG ; 
 char const* current_function_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ mips_output_filename_first_time ; 
 int num_source_filenames ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 scalar_t__ write_symbols ; 

void
FUNC4 (FILE *stream, const char *name)
{

  /* If we are emitting DWARF-2, let dwarf2out handle the ".file"
     directives.  */
  if (write_symbols == DWARF2_DEBUG)
    return;
  else if (mips_output_filename_first_time)
    {
      mips_output_filename_first_time = 0;
      num_source_filenames += 1;
      current_function_file = name;
      FUNC0 (stream, "\t.file\t%d ", num_source_filenames);
      FUNC1 (stream, name);
      FUNC2 ('\n', stream);
    }

  /* If we are emitting stabs, let dbxout.c handle this (except for
     the mips_output_filename_first_time case).  */
  else if (write_symbols == DBX_DEBUG)
    return;

  else if (name != current_function_file
	   && FUNC3 (name, current_function_file) != 0)
    {
      num_source_filenames += 1;
      current_function_file = name;
      FUNC0 (stream, "\t.file\t%d ", num_source_filenames);
      FUNC1 (stream, name);
      FUNC2 ('\n', stream);
    }
}