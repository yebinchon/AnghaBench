#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* host; } ;
struct isp1301 {TYPE_2__ otg; } ;
struct device {TYPE_3__* driver; } ;
struct TYPE_6__ {int (* suspend ) (struct device*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {struct device* controller; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct isp1301 *isp)
{
#ifdef	NO_HOST_SUSPEND
	return 0;
#else
	struct device	*dev;

	if (!isp->otg.host)
		return -ENODEV;

	/* Currently ASSUMES only the OTG port matters;
	 * other ports could be active...
	 */
	dev = isp->otg.host->controller;
	return dev->driver->suspend(dev, 3, 0);
#endif
}