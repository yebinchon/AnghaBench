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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  ssi_clk0 ; 
 int /*<<< orphan*/  ssi_clk1 ; 

int FUNC3(int ssi, struct device *dev)
{
	switch (ssi) {
	case 0:
		ssi_clk0 = FUNC2(dev, "ssi1");
		if (FUNC0(ssi_clk0))
			return FUNC1(ssi_clk0);
		return 0;
	case 1:
		ssi_clk1 = FUNC2(dev, "ssi2");
		if (FUNC0(ssi_clk1))
			return FUNC1(ssi_clk1);
		return 0;
	default:
		return -EINVAL;
	}
}