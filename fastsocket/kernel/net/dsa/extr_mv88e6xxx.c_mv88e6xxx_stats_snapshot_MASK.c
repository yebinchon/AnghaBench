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
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct dsa_switch*) ; 

__attribute__((used)) static int FUNC2(struct dsa_switch *ds, int port)
{
	int ret;

	/*
	 * Snapshot the hardware statistics counters for this port.
	 */
	FUNC0(REG_GLOBAL, 0x1d, 0xdc00 | port);

	/*
	 * Wait for the snapshotting to complete.
	 */
	ret = FUNC1(ds);
	if (ret < 0)
		return ret;

	return 0;
}