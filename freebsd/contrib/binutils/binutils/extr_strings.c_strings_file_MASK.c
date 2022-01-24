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
typedef  int /*<<< orphan*/  statbuf ;
typedef  int /*<<< orphan*/  file_off ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  datasection_only ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (char *file)
{
  statbuf st;

  if (FUNC3 (file, &st) < 0)
    {
      if (errno == ENOENT)
	FUNC5 (FUNC0("'%s': No such file"), file);
      else
	FUNC5 (FUNC0("Warning: could not locate '%s'.  reason: %s"),
		   file, FUNC8 (errno));
      return FALSE;
    }

  /* If we weren't told to scan the whole file,
     try to open it as an object file and only look at
     initialized data sections.  If that fails, fall back to the
     whole file.  */
  if (!datasection_only || !FUNC9 (file))
    {
      FILE *stream;

      stream = FUNC2 (file, FOPEN_RB);
      if (stream == NULL)
	{
	  FUNC4 (stderr, "%s: ", program_name);
	  FUNC6 (file);
	  return FALSE;
	}

      FUNC7 (file, stream, (file_off) 0, 0, 0, (char *) 0);

      if (FUNC1 (stream) == EOF)
	{
	  FUNC4 (stderr, "%s: ", program_name);
	  FUNC6 (file);
	  return FALSE;
	}
    }

  return TRUE;
}