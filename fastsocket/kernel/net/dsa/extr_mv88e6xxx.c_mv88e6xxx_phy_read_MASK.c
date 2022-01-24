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
 int FUNC0 (struct dsa_switch*,int,int) ; 

int FUNC1(struct dsa_switch *ds, int addr, int regnum)
{
	if (addr >= 0)
		return FUNC0(ds, addr, regnum);
	return 0xffff;
}