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
struct inf {scalar_t__ signal_thread; } ;

/* Variables and functions */
 struct inf* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  struct inf *inf = FUNC0 ();
  FUNC1 (args, "show signal-thread");
  if (inf->signal_thread)
    FUNC2 ("The signal thread is %s.\n",
		       FUNC3 (inf->signal_thread));
  else
    FUNC2 ("There is no signal thread.\n");
}