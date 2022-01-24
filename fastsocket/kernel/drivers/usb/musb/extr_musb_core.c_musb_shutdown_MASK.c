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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct musb {int /*<<< orphan*/  lock; int /*<<< orphan*/ * clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct musb* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct platform_device *pdev)
{
	struct musb	*musb = FUNC1(&pdev->dev);
	unsigned long	flags;

	FUNC4(&musb->lock, flags);
	FUNC3(musb);
	FUNC2(musb);
	if (musb->clock) {
		FUNC0(musb->clock);
		musb->clock = NULL;
	}
	FUNC5(&musb->lock, flags);

	/* FIXME power down */
}