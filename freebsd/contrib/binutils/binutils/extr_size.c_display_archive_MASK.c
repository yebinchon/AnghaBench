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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_no_error ; 
 scalar_t__ bfd_error_no_more_archived_files ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int return_code ; 

__attribute__((used)) static void
FUNC7 (bfd *file)
{
  bfd *arfile = (bfd *) NULL;
  bfd *last_arfile = (bfd *) NULL;

  for (;;)
    {
      FUNC5 (bfd_error_no_error);

      arfile = FUNC4 (file, arfile);
      if (arfile == NULL)
	{
	  if (FUNC1 () != bfd_error_no_more_archived_files)
	    {
	      FUNC3 (FUNC2 (file));
	      return_code = 2;
	    }
	  break;
	}

      FUNC6 (arfile);

      if (last_arfile != NULL)
	FUNC0 (last_arfile);
      last_arfile = arfile;
    }

  if (last_arfile != NULL)
    FUNC0 (last_arfile);
}