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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3 (const char *file, int line, const char *fn)
{
  if (fn != NULL)
    FUNC1 (FUNC0("%P: internal error: aborting at %s line %d in %s\n"),
	   file, line, fn);
  else
    FUNC1 (FUNC0("%P: internal error: aborting at %s line %d\n"),
	   file, line);
  FUNC1 (FUNC0("%P%F: please report this bug\n"));
  FUNC2 (1);
}