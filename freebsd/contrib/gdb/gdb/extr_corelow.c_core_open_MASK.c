#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {int /*<<< orphan*/  to_sections_end; int /*<<< orphan*/  to_sections; } ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int /*<<< orphan*/  add_to_thread_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_core ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * core_bfd ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  core_gdbarch ; 
 TYPE_1__ core_ops ; 
 int /*<<< orphan*/  core_vec ; 
 int /*<<< orphan*/  current_directory ; 
 int /*<<< orphan*/  deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC13 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  gnutarget ; 
 int /*<<< orphan*/  FUNC20 () ; 
 struct cleanup* FUNC21 (int /*<<< orphan*/  (*) (char*),char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  solib_add_stub ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  target_longname ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 char* FUNC35 (char*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ write_files ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 

__attribute__((used)) static void
FUNC40 (char *filename, int from_tty)
{
  const char *p;
  int siggy;
  struct cleanup *old_chain;
  char *temp;
  bfd *temp_bfd;
  int ontop;
  int scratch_chan;

  FUNC32 (from_tty);
  if (!filename)
    {
      FUNC14 (core_bfd ?
	     "No core file specified.  (Use `detach' to stop debugging a core file.)"
	     : "No core file specified.");
    }

  filename = FUNC35 (filename);
  if (filename[0] != '/')
    {
      temp = FUNC11 (current_directory, "/", filename, NULL);
      FUNC39 (filename);
      filename = temp;
    }

  old_chain = FUNC21 (xfree, filename);

  scratch_chan = FUNC23 (filename, O_BINARY | ( write_files ? O_RDWR : O_RDONLY ), 0);
  if (scratch_chan < 0)
    FUNC24 (filename);

  temp_bfd = FUNC4 (filename, gnutarget, scratch_chan);
  if (temp_bfd == NULL)
    FUNC24 (filename);

  if (!FUNC0 (temp_bfd, bfd_core) &&
      !FUNC17 (temp_bfd))
    {
      /* Do it after the err msg */
      /* FIXME: should be checking for errors from bfd_close (for one thing,
         on error it does not free all the storage associated with the
         bfd).  */
      FUNC22 (temp_bfd);
      FUNC14 ("\"%s\" is not a core dump: %s",
	     filename, FUNC3 (FUNC5 ()));
    }

  /* Looks semi-reasonable.  Toss the old core file and work on the new.  */

  FUNC13 (old_chain);	/* Don't free filename any more */
  FUNC36 (&core_ops);
  core_bfd = temp_bfd;
  old_chain = FUNC21 (core_close_cleanup, 0 /*ignore*/);

  /* FIXME: kettenis/20031023: This is very dangerous.  The
     CORE_GDBARCH that results from this call may very well be
     different from CURRENT_GDBARCH.  However, its methods may only
     work if it is selected as the current architecture, because they
     rely on swapped data (see gdbarch.c).  We should get rid of that
     swapped data.  */
  core_gdbarch = FUNC18 (core_bfd);

  /* Find a suitable core file handler to munch on core_bfd */
  core_vec = FUNC30 (core_bfd);

  FUNC37 ();

  /* Find the data section */
  if (FUNC9 (core_bfd, &core_ops.to_sections,
			   &core_ops.to_sections_end))
    FUNC14 ("\"%s\": Can't find sections: %s",
	   FUNC6 (core_bfd), FUNC3 (FUNC5 ()));

  /* If we have no exec file, try to set the architecture from the
     core file.  We don't do this unconditionally since an exec file
     typically contains more information that helps us determine the
     architecture than a core file.  */
  if (!exec_bfd)
    FUNC29 (core_bfd);

  ontop = !FUNC27 (&core_ops);
  FUNC13 (old_chain);

  p = FUNC1 (core_bfd);
  if (p)
    FUNC26 ("Core was generated by `%s'.\n", p);

  siggy = FUNC2 (core_bfd);
  if (siggy > 0)
    /* NOTE: target_signal_from_host() converts a target signal value
       into gdb's internal signal value.  Unfortunately gdb's internal
       value is called ``target_signal'' and this function got the
       name ..._from_host(). */
    FUNC26 ("Program terminated with signal %d, %s.\n", siggy,
		     FUNC34 (FUNC33 (siggy)));

  /* Build up thread list from BFD sections. */

  FUNC20 ();
  FUNC8 (core_bfd, add_to_thread_list,
			 FUNC7 (core_bfd, ".reg"));

  if (ontop)
    {
      /* Fetch all registers from core file.  */
      FUNC31 (-1);

      /* Add symbols and section mappings for any shared libraries.  */
#ifdef SOLIB_ADD
      catch_errors (solib_add_stub, &from_tty, (char *) 0,
		    RETURN_MASK_ALL);
#endif

      /* Now, set up the frame cache, and print the top of stack.  */
      FUNC15 ();
      FUNC28 (FUNC19 ());
      FUNC25 (deprecated_selected_frame,
			 FUNC16 (deprecated_selected_frame), 1);
    }
  else
    {
      FUNC38 (
		"you won't be able to access this core file until you terminate\n\
your %s; do ``info files''", target_longname);
    }
}