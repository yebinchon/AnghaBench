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

__attribute__((used)) static unsigned int FUNC0(int data)
{
	unsigned int tempdata;

	tempdata = (data >> 18);
	if (tempdata & 0x2000)
		tempdata &= 0x1fff;
	else
		tempdata += (1 << 13);

	return tempdata;
}