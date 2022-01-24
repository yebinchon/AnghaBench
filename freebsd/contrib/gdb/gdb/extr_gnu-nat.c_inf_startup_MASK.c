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
struct inf {int /*<<< orphan*/  event_port; } ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_MSG_TYPE_MAKE_SEND ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*) ; 
 int /*<<< orphan*/  FUNC2 (struct inf*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inf*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void
FUNC8 (struct inf *inf, int pid)
{
  error_t err;

  FUNC2 (inf, "startup: pid = %d", pid);

  FUNC1 (inf);

  /* Make the port on which we receive all events.  */
  err = FUNC4 (FUNC6 (),
			    MACH_PORT_RIGHT_RECEIVE, &inf->event_port);
  if (err)
    FUNC0 ("Error allocating event port: %s", FUNC7 (err));

  /* Make a send right for it, so we can easily copy it for other people.  */
  FUNC5 (FUNC6 (), inf->event_port,
			  inf->event_port, MACH_MSG_TYPE_MAKE_SEND);
  FUNC3 (inf, pid);
}