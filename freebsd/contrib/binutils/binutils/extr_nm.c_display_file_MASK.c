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
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  (* print_object_filename ) (char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* format ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/ * lineno_cache_bfd ; 
 int /*<<< orphan*/ * lineno_cache_rel_bfd ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  target ; 

__attribute__((used)) static bfd_boolean
FUNC14 (char *filename)
{
  bfd_boolean retval = TRUE;
  bfd *file;
  char **matching;

  if (FUNC10 (filename) < 1)
    return FALSE;

  file = FUNC6 (filename, target);
  if (file == NULL)
    {
      FUNC5 (filename);
      return FALSE;
    }

  if (FUNC0 (file, bfd_archive))
    {
      FUNC7 (file);
    }
  else if (FUNC1 (file, bfd_object, &matching))
    {
      FUNC12 (file);
      format->print_object_filename (filename);
      FUNC8 (file, NULL);
    }
  else
    {
      FUNC5 (filename);
      if (FUNC4 () == bfd_error_file_ambiguously_recognized)
	{
	  FUNC11 (matching);
	  FUNC9 (matching);
	}
      retval = FALSE;
    }

  if (!FUNC2 (file))
    FUNC3 (filename);

  lineno_cache_bfd = NULL;
  lineno_cache_rel_bfd = NULL;

  return retval;
}