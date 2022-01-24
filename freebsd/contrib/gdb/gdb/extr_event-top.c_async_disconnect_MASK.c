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
typedef  int /*<<< orphan*/  gdb_client_data ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quit_cover ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (gdb_client_data arg)
{
  FUNC0 (quit_cover, NULL,
		"Could not kill the program being debugged",
		RETURN_MASK_ALL);
  FUNC3 (SIGHUP, SIG_DFL);	/*FIXME: ??????????? */
  FUNC2 (FUNC1 (), SIGHUP);
}