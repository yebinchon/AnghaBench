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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  con_cache ; 
 int /*<<< orphan*/  connections_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_conn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stop_conn ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	/* Set all the flags to prevent any
	   socket activity.
	*/
	FUNC3(&connections_lock);
	FUNC1(stop_conn);
	FUNC4(&connections_lock);

	FUNC5();

	FUNC3(&connections_lock);
	FUNC0();

	FUNC1(free_conn);

	FUNC4(&connections_lock);
	FUNC2(con_cache);
}