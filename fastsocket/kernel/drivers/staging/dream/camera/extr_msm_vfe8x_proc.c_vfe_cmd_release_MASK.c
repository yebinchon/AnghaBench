#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* extdata; scalar_t__ extlen; int /*<<< orphan*/  vfebase; int /*<<< orphan*/  vfeirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 TYPE_1__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

void FUNC6(struct platform_device *dev)
{
	struct resource	*mem;

	FUNC0(ctrl->vfeirq);
	FUNC1(ctrl->vfeirq, 0);

	FUNC2(ctrl->vfebase);
	mem = FUNC4(dev, IORESOURCE_MEM, 0);
	FUNC5(mem->start, (mem->end - mem->start) + 1);

	ctrl->extlen = 0;

	FUNC3(ctrl->extdata);
	FUNC3(ctrl);
}