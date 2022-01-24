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
struct resource {int dummy; } ;
struct region_devres {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; struct resource* member_0; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devm_region_match ; 
 int /*<<< orphan*/  devm_region_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct region_devres*) ; 

void FUNC3(struct device *dev, struct resource *parent,
			   resource_size_t start, resource_size_t n)
{
	struct region_devres match_data = { parent, start, n };

	FUNC1(parent, start, n);
	FUNC0(FUNC2(dev, devm_region_release, devm_region_match,
			       &match_data));
}