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
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  tekhex_cmdlist ; 

__attribute__((used)) static void
FUNC2 (char *cmd, int from_tty)
{
  FUNC1 ("\"dump tekhex\" must be followed by a subcommand.\n");
  FUNC0 (tekhex_cmdlist, "dump tekhex ", -1, gdb_stdout);
}