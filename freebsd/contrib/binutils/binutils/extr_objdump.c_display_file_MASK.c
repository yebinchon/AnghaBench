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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_no_error ; 
 scalar_t__ bfd_error_no_more_archived_files ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int exit_status ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12 (char *filename, char *target)
{
  bfd *file;
  bfd *arfile = NULL;

  if (FUNC9 (filename) < 1)
    {
      exit_status = 1;
      return;
    }

  file = FUNC5 (filename, target);
  if (file == NULL)
    {
      FUNC10 (filename);
      return;
    }

  /* If the file is an archive, process all of its elements.  */
  if (FUNC1 (file, bfd_archive))
    {
      bfd *last_arfile = NULL;

      FUNC11 (FUNC0("In archive %s:\n"), FUNC4 (file));
      for (;;)
	{
	  FUNC7 (bfd_error_no_error);

	  arfile = FUNC6 (file, arfile);
	  if (arfile == NULL)
	    {
	      if (FUNC3 () != bfd_error_no_more_archived_files)
		FUNC10 (FUNC4 (file));
	      break;
	    }

	  FUNC8 (arfile);

	  if (last_arfile != NULL)
	    FUNC2 (last_arfile);
	  last_arfile = arfile;
	}

      if (last_arfile != NULL)
	FUNC2 (last_arfile);
    }
  else
    FUNC8 (file);

  FUNC2 (file);
}