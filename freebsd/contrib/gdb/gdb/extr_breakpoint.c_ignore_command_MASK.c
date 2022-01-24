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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (char *args, int from_tty)
{
  char *p = args;
  int num;

  if (p == 0)
    FUNC1 ("a breakpoint number");

  num = FUNC2 (&p);
  if (num == 0)
    FUNC0 ("bad breakpoint number: '%s'", args);
  if (*p == 0)
    FUNC0 ("Second argument (specified ignore-count) is missing.");

  FUNC6 (num,
		    FUNC3 (FUNC7 (FUNC4 (p))),
		    from_tty);
  if (from_tty)
    FUNC5 ("\n");
}