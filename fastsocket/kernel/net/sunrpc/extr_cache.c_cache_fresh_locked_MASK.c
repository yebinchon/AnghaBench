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
typedef  int /*<<< orphan*/  time_t ;
struct cache_head {int /*<<< orphan*/  flags; int /*<<< orphan*/  last_refresh; int /*<<< orphan*/  expiry_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_VALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct cache_head *head, time_t expiry)
{
	head->expiry_time = expiry;
	head->last_refresh = FUNC0();
	FUNC2(); /* paired with smp_rmb() in cache_is_valid() */
	FUNC1(CACHE_VALID, &head->flags);
}