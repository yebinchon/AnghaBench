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
typedef  int /*<<< orphan*/  ttevents_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int vfork_in_flight ; 
 int vforking_child_pid ; 

__attribute__((used)) static int
FUNC3 (int pid, ttevents_t stopping_event)
{
  if (FUNC1 (stopping_event, pid))
    {
      vforking_child_pid = pid;
      vfork_in_flight = 1;
    }

  else if (vfork_in_flight &&
	   (FUNC2 (stopping_event, pid) ||
	    FUNC0 (stopping_event, pid)))
    {
      vfork_in_flight = 0;
      vforking_child_pid = 0;
    }

  return !vfork_in_flight;
}