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
struct mii_bus {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct mii_bus* FUNC2 (struct device*) ; 

__attribute__((used)) static struct mii_bus *FUNC3(struct device *dev)
{
	struct device *d;

	d = FUNC0(dev, "mdio_bus");
	if (d != NULL) {
		struct mii_bus *bus;

		bus = FUNC2(d);
		FUNC1(d);

		return bus;
	}

	return NULL;
}