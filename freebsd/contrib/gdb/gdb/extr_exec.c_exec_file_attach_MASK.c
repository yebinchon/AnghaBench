#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  to_sections_end; int /*<<< orphan*/  to_sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  bfd_object ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_1__ exec_ops ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  gnutarget ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/ * vmap ; 
 scalar_t__ write_files ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC24 (char*) ; 

void
FUNC25 (char *filename, int from_tty)
{
  /* Remove any previous exec file.  */
  FUNC22 (&exec_ops);

  /* Now open and digest the file the user requested, if any.  */

  if (!filename)
    {
      if (from_tty)
        FUNC15 ("No executable file now.\n");
    }
  else
    {
      char *scratch_pathname;
      int scratch_chan;

      scratch_chan = FUNC13 (FUNC10 ("PATH"), 1, filename,
		   write_files ? O_RDWR | O_BINARY : O_RDONLY | O_BINARY, 0,
			    &scratch_pathname);
#if defined(__GO32__) || defined(_WIN32) || defined(__CYGWIN__)
      if (scratch_chan < 0)
	{
	  char *exename = alloca (strlen (filename) + 5);
	  strcat (strcpy (exename, filename), ".exe");
	  scratch_chan = openp (getenv ("PATH"), 1, exename, write_files ?
	     O_RDWR | O_BINARY : O_RDONLY | O_BINARY, 0, &scratch_pathname);
	}
#endif
      if (scratch_chan < 0)
	FUNC14 (filename);
      exec_bfd = FUNC4 (scratch_pathname, gnutarget, scratch_chan);

      if (!exec_bfd)
	FUNC7 ("\"%s\": could not open as an executable file: %s",
	       scratch_pathname, FUNC3 (FUNC5 ()));

      /* At this point, scratch_pathname and exec_bfd->name both point to the
         same malloc'd string.  However exec_close() will attempt to free it
         via the exec_bfd->name pointer, so we need to make another copy and
         leave exec_bfd as the new owner of the original copy. */
      scratch_pathname = FUNC24 (scratch_pathname);
      FUNC11 (xfree, scratch_pathname);

      if (!FUNC2 (exec_bfd, bfd_object))
	{
	  /* Make sure to close exec_bfd, or else "run" might try to use
	     it.  */
	  FUNC8 (0);
	  FUNC7 ("\"%s\": not in executable format: %s",
		 scratch_pathname, FUNC3 (FUNC5 ()));
	}

      /* FIXME - This should only be run for RS6000, but the ifdef is a poor
         way to accomplish.  */
#ifdef DEPRECATED_IBM6000_TARGET
      /* Setup initial vmap. */

      map_vmap (exec_bfd, 0);
      if (vmap == NULL)
	{
	  /* Make sure to close exec_bfd, or else "run" might try to use
	     it.  */
	  exec_close (0);
	  error ("\"%s\": can't find the file sections: %s",
		 scratch_pathname, bfd_errmsg (bfd_get_error ()));
	}
#endif /* DEPRECATED_IBM6000_TARGET */

      if (FUNC6 (exec_bfd, &exec_ops.to_sections,
			       &exec_ops.to_sections_end))
	{
	  /* Make sure to close exec_bfd, or else "run" might try to use
	     it.  */
	  FUNC8 (0);
	  FUNC7 ("\"%s\": can't find the file sections: %s",
		 scratch_pathname, FUNC3 (FUNC5 ()));
	}

#ifdef DEPRECATED_HPUX_TEXT_END
      DEPRECATED_HPUX_TEXT_END (&exec_ops);
#endif

      FUNC23 ();

      FUNC17 (exec_bfd);

      FUNC16 (&exec_ops);

      /* Tell display code (if any) about the changed file name.  */
      if (&exec_file_display_hook)
	FUNC9) (filename);
    }
}