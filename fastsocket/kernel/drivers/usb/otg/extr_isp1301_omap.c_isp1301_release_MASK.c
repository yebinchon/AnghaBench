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
struct isp1301 {int /*<<< orphan*/  (* i2c_release ) (struct device*) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 struct isp1301* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1301*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct isp1301	*isp;

	isp = FUNC0(dev);

	/* FIXME -- not with a "new style" driver, it doesn't!! */

	/* ugly -- i2c hijacks our memory hook to wait_for_completion() */
	if (isp->i2c_release)
		isp->i2c_release(dev);
	FUNC1 (isp);
}