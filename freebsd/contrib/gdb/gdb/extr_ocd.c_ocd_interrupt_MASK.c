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
 char OCD_AYT ; 
 int ocd_interrupt_flag ; 
 int /*<<< orphan*/  ocd_interrupt_twice ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (int signo)
{
  /* If this doesn't work, try more severe steps.  */
  FUNC3 (signo, ocd_interrupt_twice);

  if (remote_debug)
    FUNC2 ("ocd_interrupt called\n");

  {
    char buf[1];

    FUNC1 ();
    buf[0] = OCD_AYT;
    FUNC0 (buf, 1);
    ocd_interrupt_flag = 1;
  }
}