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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 () ; 
 scalar_t__ foreground ; 

int
FUNC2(void)
{
  int pid = FUNC1();

  if (pid == 0) {
    FUNC0("backgrounded");
    foreground = 0;
  } else
    FUNC0("forked process %d", pid);
  return pid;
}