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
typedef  int u8 ;
struct fb_info {int /*<<< orphan*/  par; } ;

/* Variables and functions */
 int /*<<< orphan*/  S1DREG_BBLT_CTL0 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u8
FUNC3(struct fb_info *info, u8 bit, int timeout)
{
	while (!(FUNC1(info->par, S1DREG_BBLT_CTL0) & bit)) {
		FUNC2(10);
		if (!--timeout) {
			FUNC0("wait_bitset timeout\n");
			break;
		}
	}

	return timeout;
}