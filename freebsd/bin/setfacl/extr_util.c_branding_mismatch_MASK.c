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
 int ACL_BRAND_UNKNOWN ; 

int
FUNC0(int brand1, int brand2)
{
	if (brand1 == ACL_BRAND_UNKNOWN || brand2 == ACL_BRAND_UNKNOWN)
		return (0);
	if (brand1 != brand2)
		return (1);
	return (0);
}