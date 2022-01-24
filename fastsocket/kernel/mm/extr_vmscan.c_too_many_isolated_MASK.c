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
struct scan_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 int /*<<< orphan*/  NR_ISOLATED_ANON ; 
 int /*<<< orphan*/  NR_ISOLATED_FILE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct scan_control*) ; 
 unsigned long FUNC2 (struct zone*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct zone *zone, int file,
		struct scan_control *sc)
{
	unsigned long inactive, isolated;

	if (FUNC0())
		return 0;

	if (!FUNC1(sc))
		return 0;

	if (file) {
		inactive = FUNC2(zone, NR_INACTIVE_FILE);
		isolated = FUNC2(zone, NR_ISOLATED_FILE);
	} else {
		inactive = FUNC2(zone, NR_INACTIVE_ANON);
		isolated = FUNC2(zone, NR_ISOLATED_ANON);
	}

	return isolated > inactive;
}