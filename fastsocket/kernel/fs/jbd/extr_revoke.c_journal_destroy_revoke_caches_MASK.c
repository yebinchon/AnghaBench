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
 int /*<<< orphan*/ * revoke_record_cache ; 
 int /*<<< orphan*/ * revoke_table_cache ; 

void FUNC1(void)
{
	if (revoke_record_cache) {
		FUNC0(revoke_record_cache);
		revoke_record_cache = NULL;
	}
	if (revoke_table_cache) {
		FUNC0(revoke_table_cache);
		revoke_table_cache = NULL;
	}
}