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
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int MO_HANDLE_NL ; 
 int SERIAL_TIMEOUT ; 
 TYPE_1__* current_monitor ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ in_monitor_wait ; 
 scalar_t__ monitor_debug_p ; 
 int /*<<< orphan*/  monitor_desc ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 scalar_t__ remote_debug ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5 (int timeout)
{
  int c;
  static enum
    {
      last_random, last_nl, last_cr, last_crnl
    }
  state = last_random;
  int looping;

  do
    {
      looping = 0;
      c = FUNC3 (monitor_desc, timeout);

      if (c >= 0)
	{
	  c &= 0x7f;
	  /* This seems to interfere with proper function of the
	     input stream */
	  if (monitor_debug_p || remote_debug)
	    {
	      char buf[2];
	      buf[0] = c;
	      buf[1] = '\0';
	      FUNC2 ("read -->", buf, "<--");
	    }

	}

      /* Canonicialize \n\r combinations into one \r */
      if ((current_monitor->flags & MO_HANDLE_NL) != 0)
	{
	  if ((c == '\r' && state == last_nl)
	      || (c == '\n' && state == last_cr))
	    {
	      state = last_crnl;
	      looping = 1;
	    }
	  else if (c == '\r')
	    state = last_cr;
	  else if (c != '\n')
	    state = last_random;
	  else
	    {
	      state = last_nl;
	      c = '\r';
	    }
	}
    }
  while (looping);

  if (c >= 0)
    return c;

  if (c == SERIAL_TIMEOUT)
#if 0
    /* I fail to see how detaching here can be useful */
    if (in_monitor_wait)	/* Watchdog went off */
      {
	target_mourn_inferior ();
	error ("GDB serial timeout has expired.  Target detached.\n");
      }
    else
#endif
      FUNC0 ("Timeout reading from remote system.");

  FUNC1 ("remote-monitor");
}