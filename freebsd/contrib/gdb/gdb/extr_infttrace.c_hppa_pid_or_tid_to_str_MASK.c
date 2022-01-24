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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

char *
FUNC7 (ptid_t ptid)
{
  static char buf[100];		/* Static because address returned. */
  pid_t id = FUNC0 (ptid);

  /* Does this appear to be a process?  If so, print it that way. */
  if (FUNC3 (id))
    return FUNC1 (ptid);

  /* Else, print both the GDB thread number and the system thread id. */
  FUNC5 (buf, "thread %d (", FUNC4 (ptid));
  FUNC6 (buf, FUNC2 (ptid));
  FUNC6 (buf, ")\0");

  return buf;
}