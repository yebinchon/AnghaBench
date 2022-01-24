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
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* rtl8225_chan ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,short) ; 

void FUNC5(struct net_device *dev, short ch)
{
	FUNC4(dev, ch);

	FUNC1(dev, 0x7, rtl8225_chan[ch]);

	if ((FUNC0(dev, 0x7) & 0x0F80) != rtl8225_chan[ch])
		FUNC1(dev, 0x7, rtl8225_chan[ch]);

	FUNC3(1);

	FUNC2(dev);
	FUNC3(10);
}