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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * saved_filename ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC3 (char *args, int from_tty)
{
  if (saved_filename == NULL)
    return;

  FUNC1 ();
  if (from_tty)
    FUNC0 (gdb_stdout, "Done logging to %s.\n", saved_filename);
  FUNC2 (saved_filename);
  saved_filename = NULL;
}