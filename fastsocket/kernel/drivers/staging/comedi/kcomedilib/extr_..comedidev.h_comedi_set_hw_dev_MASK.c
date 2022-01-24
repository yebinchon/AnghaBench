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
struct device {int dummy; } ;
struct comedi_device {struct device* hw_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static inline void FUNC3(struct comedi_device *dev,
				     struct device *hw_dev)
{
	if (dev->hw_dev)
		FUNC2(dev->hw_dev);

	dev->hw_dev = hw_dev;
	if (dev->hw_dev) {
		dev->hw_dev = FUNC1(dev->hw_dev);
		FUNC0(dev->hw_dev == NULL);
	}
}