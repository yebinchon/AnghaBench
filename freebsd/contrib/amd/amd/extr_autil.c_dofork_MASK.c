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
 int /*<<< orphan*/  NumChildren ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ foreground ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(void)
{
  int pid;

top:
  pid = FUNC1();

  if (pid < 0) {		/* fork error, retry in 1 second */
    FUNC2(1);
    goto top;
  }
  if (pid == 0) {		/* child process (foreground==false) */
    FUNC0();
    foreground = 0;
  } else {			/* parent process, has one more child */
    NumChildren++;
  }

  return pid;
}