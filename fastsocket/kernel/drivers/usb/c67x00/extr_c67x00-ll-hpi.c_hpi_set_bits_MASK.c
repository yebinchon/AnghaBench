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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct c67x00_device {TYPE_1__ hpi; } ;

/* Variables and functions */
 int FUNC0 (struct c67x00_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct c67x00_device *dev, u16 reg, u16 mask)
{
	u16 value;
	unsigned long flags;

	FUNC2(&dev->hpi.lock, flags);
	value = FUNC0(dev, reg);
	FUNC1(dev, reg, value | mask);
	FUNC3(&dev->hpi.lock, flags);
}