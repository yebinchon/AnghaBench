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
struct zone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_ACTIVE_ANON ; 
 int /*<<< orphan*/  NR_ACTIVE_FILE ; 
 int /*<<< orphan*/  NR_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 int /*<<< orphan*/  NR_ISOLATED_ANON ; 
 int /*<<< orphan*/  NR_ISOLATED_FILE ; 
 unsigned long FUNC0 (struct zone*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct zone *zone)
{
	unsigned long active, inactive, isolated;

	inactive = FUNC0(zone, NR_INACTIVE_FILE) +
					FUNC0(zone, NR_INACTIVE_ANON);
	active = FUNC0(zone, NR_ACTIVE_FILE) +
					FUNC0(zone, NR_ACTIVE_ANON);
	isolated = FUNC0(zone, NR_ISOLATED_FILE) +
					FUNC0(zone, NR_ISOLATED_ANON);

	return isolated > (inactive + active) / 2;
}