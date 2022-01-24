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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kill_callback ; 
 int /*<<< orphan*/  kill_wait_callback ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* Kill all LWP's ...  */
  FUNC0 (kill_callback, NULL);

  /* ... and wait until we've flushed all events.  */
  FUNC0 (kill_wait_callback, NULL);

  FUNC1 ();
}