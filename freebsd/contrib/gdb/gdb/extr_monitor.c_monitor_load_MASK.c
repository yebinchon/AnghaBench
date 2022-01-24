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
typedef  int /*<<< orphan*/  bfd_vma ;
struct TYPE_2__ {int flags; scalar_t__ loadresp; int /*<<< orphan*/  load; int /*<<< orphan*/  (* load_routine ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int MO_SREC_ACK ; 
 int /*<<< orphan*/  SREC_ALL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* current_monitor ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  hashmark ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  monitor_desc ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * monitor_wait_srec_ack ; 
 int FUNC6 (char*,char*,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (char *file, int from_tty)
{
  FUNC2 ("MON load\n");

  if (current_monitor->load_routine)
    current_monitor->load_routine (monitor_desc, file, hashmark);
  else
    {				/* The default is ascii S-records */
      int n;
      unsigned long load_offset;
      char buf[128];

      /* enable user to specify address for downloading as 2nd arg to load */
      n = FUNC6 (file, "%s 0x%lx", buf, &load_offset);
      if (n > 1)
	file = buf;
      else
	load_offset = 0;

      FUNC5 (current_monitor->load);
      if (current_monitor->loadresp)
	FUNC3 (current_monitor->loadresp, NULL, 0);

      FUNC1 (monitor_desc, file, (bfd_vma) load_offset,
		 32, SREC_ALL, hashmark,
		 current_monitor->flags & MO_SREC_ACK ?
		 monitor_wait_srec_ack : NULL);

      FUNC4 (NULL, 0);
    }

  /* Finally, make the PC point at the start address */
  if (exec_bfd)
    FUNC8 (FUNC0 (exec_bfd));

  /* There used to be code here which would clear inferior_ptid and
     call clear_symtab_users.  None of that should be necessary:
     monitor targets should behave like remote protocol targets, and
     since generic_load does none of those things, this function
     shouldn't either.

     Furthermore, clearing inferior_ptid is *incorrect*.  After doing
     a load, we still have a valid connection to the monitor, with a
     live processor state to fiddle with.  The user can type
     `continue' or `jump *start' and make the program run.  If they do
     these things, however, GDB will be talking to a running program
     while inferior_ptid is null_ptid; this makes things like
     reinit_frame_cache very confused.  */
}