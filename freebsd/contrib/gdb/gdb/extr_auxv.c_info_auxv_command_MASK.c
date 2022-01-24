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
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  target_has_stack ; 

__attribute__((used)) static void
FUNC2 (char *cmd, int from_tty)
{
  if (! target_has_stack)
    FUNC0 ("The program has no auxiliary information now.");
  else
    {
      int ents = FUNC1 (gdb_stdout, &current_target);
      if (ents < 0)
	FUNC0 ("No auxiliary vector found, or failed reading it.");
      else if (ents == 0)
	FUNC0 ("Auxiliary vector is empty.");
    }
}