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
struct target_ops {int dummy; } ;
typedef  enum ocd_target_type { ____Placeholder_ocd_target_type } ocd_target_type ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int baud_rate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,char*,int /*<<< orphan*/ ) ; 
 struct target_ops* current_ops ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  ocd_desc ; 
 int /*<<< orphan*/  ocd_start_remote ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct target_ops*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct target_ops*) ; 

void
FUNC14 (char *name, int from_tty, enum ocd_target_type target_type,
	  struct target_ops *ops)
{
  unsigned char buf[10], *p;
  int pktlen;

  if (name == 0)
    FUNC1 ("To open an OCD connection, you need to specify the\n\
device the OCD device is attached to (e.g. /dev/ttya).");

  FUNC12 (from_tty);

  current_ops = ops;

  FUNC13 (current_ops);

  ocd_desc = FUNC9 (name);
  if (!ocd_desc)
    FUNC2 (name);

  if (baud_rate != -1)
    {
      if (FUNC11 (ocd_desc, baud_rate))
	{
	  FUNC7 (ocd_desc);
	  FUNC2 (name);
	}
    }

  FUNC10 (ocd_desc);

  /* If there is something sitting in the buffer we might take it as a
     response to a command, which would be bad.  */
  FUNC8 (ocd_desc);

  if (from_tty)
    {
      FUNC6 ("Remote target wiggler connected to ");
      FUNC6 (name);
      FUNC6 ("\n");
    }
  FUNC5 (current_ops);	/* Switch to using remote target now */

  /* Without this, some commands which require an active target (such as kill)
     won't work.  This variable serves (at least) double duty as both the pid
     of the target process (if it has such), and as a flag indicating that a
     target is active.  These functions should be split out into seperate
     variables, especially since GDB will someday have a notion of debugging
     several processes.  */

  inferior_ptid = FUNC3 (42000);
  /* Start the remote connection; if error (0), discard this target.
     In particular, if the user quits, be sure to discard it
     (we'd be in an inconsistent state otherwise).  */
  if (!FUNC0 (ocd_start_remote, &target_type,
		     "Couldn't establish connection to remote target\n",
		     RETURN_MASK_ALL))
    {
      FUNC4 ();
      FUNC1 ("Failed to connect to OCD.");
    }
}