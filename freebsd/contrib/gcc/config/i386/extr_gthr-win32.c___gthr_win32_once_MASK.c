#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ done; int /*<<< orphan*/  started; } ;
typedef  TYPE_1__ __gthread_once_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 void FUNC2 () ; 

int
FUNC3 (__gthread_once_t *once, void (*func) (void))
{
  if (once == NULL || func == NULL)
    return EINVAL;

  if (! once->done)
    {
      if (FUNC0 (&(once->started)) == 0)
        {
	  (*func) ();
	  once->done = TRUE;
	}
      else
	{
	  /* Another thread is currently executing the code, so wait for it 
	     to finish; yield the CPU in the meantime.  If performance 
	     does become an issue, the solution is to use an Event that 
	     we wait on here (and set above), but that implies a place to 
	     create the event before this routine is called.  */ 
	  while (! once->done)
	    FUNC1 (0);
	}
    }
  return 0;
}