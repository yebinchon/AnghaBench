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
 int INT_MAX ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5 (int werrno, int wstatus, int max_ok_status,
		    char const *subsidiary_program)
{
  int status = (! werrno && FUNC1 (wstatus)
		? FUNC0 (wstatus)
		: INT_MAX);

  if (max_ok_status < status)
    {
      FUNC3 (0, werrno,
	     FUNC2(status == 126
	       ? "subsidiary program `%s' could not be invoked"
	       : status == 127
	       ? "subsidiary program `%s' not found"
	       : status == INT_MAX
	       ? "subsidiary program `%s' failed"
	       : "subsidiary program `%s' failed (exit status %d)"),
	     subsidiary_program, status);
      FUNC4 ();
    }
}