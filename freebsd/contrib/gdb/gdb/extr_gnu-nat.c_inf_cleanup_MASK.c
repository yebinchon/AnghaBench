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
struct inf {int nomsg; scalar_t__ event_port; scalar_t__ pending_execs; scalar_t__ no_wait; scalar_t__ traced; scalar_t__ stopped; scalar_t__ running; scalar_t__ pid; } ;

/* Variables and functions */
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct inf*) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct inf*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5 (struct inf *inf)
{
  FUNC1 (inf, "cleanup");

  FUNC0 (inf);

  FUNC2 (inf, -1);
  inf->pid = 0;
  inf->running = 0;
  inf->stopped = 0;
  inf->nomsg = 1;
  inf->traced = 0;
  inf->no_wait = 0;
  inf->pending_execs = 0;

  if (inf->event_port)
    {
      FUNC3 (FUNC4 (), inf->event_port);
      inf->event_port = MACH_PORT_NULL;
    }
}