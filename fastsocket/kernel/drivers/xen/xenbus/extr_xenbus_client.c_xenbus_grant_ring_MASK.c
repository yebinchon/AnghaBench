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
struct xenbus_device {int /*<<< orphan*/  otherend_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*,int,char*) ; 

int FUNC2(struct xenbus_device *dev, unsigned long ring_mfn)
{
	int err = FUNC0(dev->otherend_id, ring_mfn, 0);
	if (err < 0)
		FUNC1(dev, err, "granting access to ring page");
	return err;
}