#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ resp_delim; } ;
struct TYPE_8__ {scalar_t__ resp_delim; } ;
struct TYPE_7__ {scalar_t__ resp_delim; } ;
struct monitor_ops {scalar_t__ magic; int flags; char** init; int num_breakpoints; char* clr_all_break; char* line_term; int /*<<< orphan*/ * set_break; scalar_t__ stop; int /*<<< orphan*/  stopbits; TYPE_3__ setreg; TYPE_2__ setmem; TYPE_1__ getmem; scalar_t__ register_pattern; TYPE_4__* target; } ;
struct TYPE_10__ {char* to_shortname; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ MONITOR_OPS_MAGIC ; 
 int MO_NO_ECHO_ON_OPEN ; 
 int baud_rate ; 
 int /*<<< orphan*/ * breakaddr ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct monitor_ops* current_monitor ; 
 scalar_t__ dev_name ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  getmem_resp_delim_fastmap ; 
 int /*<<< orphan*/  getmem_resp_delim_pattern ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  monitor_desc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  register_fastmap ; 
 int /*<<< orphan*/  register_pattern ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setmem_resp_delim_fastmap ; 
 int /*<<< orphan*/  setmem_resp_delim_pattern ; 
 int /*<<< orphan*/  setreg_resp_delim_fastmap ; 
 int /*<<< orphan*/  setreg_resp_delim_pattern ; 
 int /*<<< orphan*/  FUNC18 () ; 
 TYPE_4__* targ_ops ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (char*) ; 

void
FUNC24 (char *args, struct monitor_ops *mon_ops, int from_tty)
{
  char *name;
  char **p;

  if (mon_ops->magic != MONITOR_OPS_MAGIC)
    FUNC1 ("Magic number of monitor_ops struct wrong.");

  targ_ops = mon_ops->target;
  name = targ_ops->to_shortname;

  if (!args)
    FUNC1 ("Use `target %s DEVICE-NAME' to use a serial port, or \n\
`target %s HOST-NAME:PORT-NUMBER' to use a network connection.", name, name);

  FUNC19 (from_tty);

  /* Setup pattern for register dump */

  if (mon_ops->register_pattern)
    FUNC0 (mon_ops->register_pattern, &register_pattern,
		     register_fastmap);

  if (mon_ops->getmem.resp_delim)
    FUNC0 (mon_ops->getmem.resp_delim, &getmem_resp_delim_pattern,
		     getmem_resp_delim_fastmap);

  if (mon_ops->setmem.resp_delim)
    FUNC0 (mon_ops->setmem.resp_delim, &setmem_resp_delim_pattern,
                     setmem_resp_delim_fastmap);

  if (mon_ops->setreg.resp_delim)
    FUNC0 (mon_ops->setreg.resp_delim, &setreg_resp_delim_pattern,
                     setreg_resp_delim_fastmap);
  
  FUNC20 (targ_ops);

  if (dev_name)
    FUNC21 (dev_name);
  dev_name = FUNC23 (args);

  monitor_desc = FUNC14 (dev_name);

  if (!monitor_desc)
    FUNC8 (dev_name);

  if (baud_rate != -1)
    {
      if (FUNC16 (monitor_desc, baud_rate))
	{
	  FUNC12 (monitor_desc);
	  FUNC8 (dev_name);
	}
    }

  FUNC15 (monitor_desc);

  FUNC13 (monitor_desc);

  /* some systems only work with 2 stop bits */

  FUNC17 (monitor_desc, mon_ops->stopbits);

  current_monitor = mon_ops;

  /* See if we can wake up the monitor.  First, try sending a stop sequence,
     then send the init strings.  Last, remove all breakpoints.  */

  if (current_monitor->stop)
    {
      FUNC7 ();
      if ((current_monitor->flags & MO_NO_ECHO_ON_OPEN) == 0)
	{
	  FUNC3 ("EXP Open echo\n");
	  FUNC4 (NULL, 0);
	}
    }

  /* wake up the monitor and see if it's alive */
  for (p = mon_ops->init; *p != NULL; p++)
    {
      /* Some of the characters we send may not be echoed,
         but we hope to get a prompt at the end of it all. */

      if ((current_monitor->flags & MO_NO_ECHO_ON_OPEN) == 0)
	FUNC5 (*p);
      else
	FUNC6 (*p);
      FUNC4 (NULL, 0);
    }

  FUNC13 (monitor_desc);

  /* Alloc breakpoints */
  if (mon_ops->set_break != NULL)
    {
      if (mon_ops->num_breakpoints == 0)
	mon_ops->num_breakpoints = 8;

      breakaddr = (CORE_ADDR *) FUNC22 (mon_ops->num_breakpoints * sizeof (CORE_ADDR));
      FUNC2 (breakaddr, 0, mon_ops->num_breakpoints * sizeof (CORE_ADDR));
    }

  /* Remove all breakpoints */

  if (mon_ops->clr_all_break)
    {
      FUNC5 (mon_ops->clr_all_break);
      FUNC4 (NULL, 0);
    }

  if (from_tty)
    FUNC10 ("Remote target %s connected to %s\n", name, dev_name);

  FUNC11 (targ_ops);

  inferior_ptid = FUNC9 (42000);	/* Make run command think we are busy... */

  /* Give monitor_wait something to read */

  FUNC5 (current_monitor->line_term);

  FUNC18 ();
}