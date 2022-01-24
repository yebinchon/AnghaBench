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
struct of_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct mpc5200_wdt {TYPE_1__ mem; int /*<<< orphan*/  regs; int /*<<< orphan*/  miscdev; } ;

/* Variables and functions */
 struct mpc5200_wdt* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mpc5200_wdt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mpc5200_wdt*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct of_device *op)
{
	struct mpc5200_wdt *wdt = FUNC0(&op->dev);

	FUNC4(wdt);
	FUNC3(&wdt->miscdev);
	FUNC1(wdt->regs);
	FUNC5(wdt->mem.start, wdt->mem.end - wdt->mem.start + 1);
	FUNC2(wdt);

	return 0;
}