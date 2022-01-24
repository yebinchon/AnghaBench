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
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 

short FUNC2(struct net_device *dev)
{
	short vz2 = 1;

	if (FUNC0(dev, 8) != 0x588)
		vz2 = 0;
	else	/* reg 9 pg 1 = 24 */
		if (FUNC0(dev, 9) != 0x700)
			vz2 = 0;

	/* sw back to pg 0 */
	FUNC1(dev, 0, 0xb7);

	return vz2;
}