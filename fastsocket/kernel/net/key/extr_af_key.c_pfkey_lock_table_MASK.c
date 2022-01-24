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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pfkey_table_lock ; 
 int /*<<< orphan*/  pfkey_table_users ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline__ void FUNC3(void)
{
	/* read_lock() synchronizes us to pfkey_table_grab */

	FUNC1(&pfkey_table_lock);
	FUNC0(&pfkey_table_users);
	FUNC2(&pfkey_table_lock);
}