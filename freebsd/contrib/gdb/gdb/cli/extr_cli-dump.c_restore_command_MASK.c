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
struct callback_data {scalar_t__ load_start; scalar_t__ load_end; void* load_offset; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct callback_data*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct callback_data*) ; 
 int /*<<< orphan*/  restore_section_callback ; 
 char* FUNC7 (char**,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char**,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_has_execution ; 

__attribute__((used)) static void
FUNC12 (char *args, int from_tty)
{
  char *filename;
  struct callback_data data;
  bfd *ibfd;
  int binary_flag = 0;

  if (!target_has_execution)
    FUNC3 ();

  data.load_offset = 0;
  data.load_start  = 0;
  data.load_end    = 0;

  /* Parse the input arguments.  First is filename (required). */
  filename = FUNC8 (&args, NULL);
  if (args != NULL && *args != '\0')
    {
      char *binary_string = "binary";

      /* Look for optional "binary" flag.  */
      if (FUNC11 (args, binary_string, FUNC10 (binary_string)) == 0)
	{
	  binary_flag = 1;
	  args += FUNC10 (binary_string);
	  args = FUNC9 (args);
	}
      /* Parse offset (optional). */
      if (args != NULL && *args != '\0')
      data.load_offset = 
	FUNC4 (FUNC7 (&args, NULL));
      if (args != NULL && *args != '\0')
	{
	  /* Parse start address (optional). */
	  data.load_start = 
	    FUNC4 (FUNC7 (&args, NULL));
	  if (args != NULL && *args != '\0')
	    {
	      /* Parse end address (optional). */
	      data.load_end = FUNC4 (args);
	      if (data.load_end <= data.load_start)
		FUNC2 ("Start must be less than end.");
	    }
	}
    }

  if (info_verbose)
    FUNC5 ("Restore file %s offset 0x%lx start 0x%lx end 0x%lx\n",
		     filename, (unsigned long) data.load_offset, 
		     (unsigned long) data.load_start, 
		     (unsigned long) data.load_end);

  if (binary_flag)
    {
      FUNC6 (filename, &data);
    }
  else
    {
      /* Open the file for loading. */
      ibfd = FUNC1 (filename, NULL);

      /* Process the sections. */
      FUNC0 (ibfd, restore_section_callback, &data);
    }
  return;
}