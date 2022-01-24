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
 scalar_t__ GDB_OSABI_DEFAULT ; 
 scalar_t__ GDB_OSABI_UNKNOWN ; 
 int /*<<< orphan*/  current_gdbarch ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ osabi_auto ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ user_osabi_state ; 
 scalar_t__ user_selected_osabi ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  if (user_osabi_state == osabi_auto)
    FUNC2 ("The current OS ABI is \"auto\" (currently \"%s\").\n",
		     FUNC1 (FUNC0 (current_gdbarch)));
  else
    FUNC2 ("The current OS ABI is \"%s\".\n",
		     FUNC1 (user_selected_osabi));

  if (GDB_OSABI_DEFAULT != GDB_OSABI_UNKNOWN)
    FUNC2 ("The default OS ABI is \"%s\".\n",
		     FUNC1 (GDB_OSABI_DEFAULT));
}