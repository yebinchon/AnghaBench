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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct c67x00_device {TYPE_1__ hpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct c67x00_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

u16 FUNC3(struct c67x00_device *dev)
{
	u16 value;
	unsigned long flags;

	FUNC1(&dev->hpi.lock, flags);
	value = FUNC0(dev, HPI_STATUS);
	FUNC2(&dev->hpi.lock, flags);

	return value;
}