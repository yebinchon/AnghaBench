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
 int FUNC0 (void*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int*) ; 
 int FUNC1 (void*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

int FUNC3(void *dev, unsigned int subdev,
			     unsigned int chan, unsigned int range,
			     unsigned int aref, unsigned int *data,
			     unsigned int nano_sec)
{
	int retval;

	retval = FUNC1(dev, subdev, chan, range, aref);
	if (retval < 0)
		return retval;

	FUNC2((nano_sec + 999) / 1000);

	return FUNC0(dev, subdev, chan, range, aref, data);
}