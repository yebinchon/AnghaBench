#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* touch_bit ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct w1_master*) ; 
 int /*<<< orphan*/  FUNC2 (struct w1_master*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct w1_master *dev, int bit)
{
	if (dev->bus_master->touch_bit)
		return dev->bus_master->touch_bit(dev->bus_master->data, bit);
	else if (bit)
		return FUNC1(dev);
	else {
		FUNC2(dev, 0);
		return 0;
	}
}