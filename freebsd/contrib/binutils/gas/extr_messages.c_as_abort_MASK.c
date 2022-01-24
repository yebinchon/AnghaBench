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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (const char *file, int line, const char *fn)
{
  FUNC1 ();
  if (fn)
    FUNC2 (stderr, FUNC0("Internal error, aborting at %s line %d in %s\n"),
	     file, line, fn);
  else
    FUNC2 (stderr, FUNC0("Internal error, aborting at %s line %d\n"),
	     file, line);
  FUNC2 (stderr, "%s", FUNC0("Please report this bug.\n"));
  FUNC3 (EXIT_FAILURE);
}