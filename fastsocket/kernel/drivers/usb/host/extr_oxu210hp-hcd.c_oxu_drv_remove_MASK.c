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
struct platform_device {int dummy; } ;
struct oxu_info {TYPE_1__** hcd; } ;
struct TYPE_2__ {unsigned long rsrc_start; unsigned long rsrc_len; void* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxu_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,TYPE_1__*) ; 
 struct oxu_info* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct oxu_info *info = FUNC3(pdev);
	unsigned long memstart = info->hcd[0]->rsrc_start,
			memlen = info->hcd[0]->rsrc_len;
	void *base = info->hcd[0]->regs;

	FUNC2(pdev, info->hcd[0]);
	FUNC2(pdev, info->hcd[1]);

	FUNC0(base);
	FUNC5(memstart, memlen);

	FUNC1(info);
	FUNC4(pdev, NULL);

	return 0;
}