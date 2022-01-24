#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  (* print_archive_member ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* print_archive_filename ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 scalar_t__ bfd_error_no_more_archived_files ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* format ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 int /*<<< orphan*/ * lineno_cache_bfd ; 
 int /*<<< orphan*/ * lineno_cache_rel_bfd ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 scalar_t__ print_armap ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15 (bfd *file)
{
  bfd *arfile = NULL;
  bfd *last_arfile = NULL;
  char **matching;

  format->print_archive_filename (FUNC5 (file));

  if (print_armap)
    FUNC11 (file);

  for (;;)
    {
      FUNC0 (1);

      arfile = FUNC7 (file, arfile);

      if (arfile == NULL)
	{
	  if (FUNC4 () != bfd_error_no_more_archived_files)
	    FUNC3 (FUNC5 (file));
	  break;
	}

      if (FUNC1 (arfile, bfd_object, &matching))
	{
	  FUNC12 (arfile);
	  format->print_archive_member (FUNC5 (file),
					FUNC5 (arfile));
	  FUNC8 (arfile, file);
	}
      else
	{
	  FUNC6 (FUNC5 (arfile));
	  if (FUNC4 () == bfd_error_file_ambiguously_recognized)
	    {
	      FUNC10 (matching);
	      FUNC9 (matching);
	    }
	}

      if (last_arfile != NULL)
	{
	  FUNC2 (last_arfile);
	  lineno_cache_bfd = NULL;
	  lineno_cache_rel_bfd = NULL;
	}
      last_arfile = arfile;
    }

  if (last_arfile != NULL)
    {
      FUNC2 (last_arfile);
      lineno_cache_bfd = NULL;
      lineno_cache_rel_bfd = NULL;
    }
}