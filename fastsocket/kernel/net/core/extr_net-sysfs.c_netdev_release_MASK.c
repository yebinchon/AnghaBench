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
struct net_device_extended_frozen {int dummy; } ;
struct net_device {scalar_t__ reg_state; char* ifalias; int padded; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NETREG_RELEASED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct net_device_extended_frozen* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *d)
{
	struct net_device *dev = FUNC3(d);
	struct net_device_extended_frozen *dev_ext_frozen;

	FUNC0(dev->reg_state != NETREG_RELEASED);

	FUNC1(dev->ifalias);
	dev_ext_frozen = FUNC2(dev);
	FUNC1((char *)dev_ext_frozen - dev->padded);
}