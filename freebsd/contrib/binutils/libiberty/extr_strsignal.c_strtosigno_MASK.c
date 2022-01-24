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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int num_signal_names ; 
 int /*<<< orphan*/ ** signal_names ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 

int
FUNC2 (const char *name)
{
  int signo = 0;

  if (name != NULL)
    {
      if (signal_names == NULL)
	{
	  FUNC0 ();
	}
      for (signo = 0; signo < num_signal_names; signo++)
	{
	  if ((signal_names[signo] != NULL) &&
	      (FUNC1 (name, signal_names[signo]) == 0))
	    {
	      break;
	    }
	}
      if (signo == num_signal_names)
	{
	  signo = 0;
	}
    }
  return (signo);
}