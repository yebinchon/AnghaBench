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
struct of_device {int /*<<< orphan*/  dev; } ;
struct mpc5200_wdt {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 struct mpc5200_wdt* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mpc5200_wdt*) ; 

__attribute__((used)) static int FUNC2(struct of_device *op, pm_message_t state)
{
	struct mpc5200_wdt *wdt = FUNC0(&op->dev);
	FUNC1(wdt);
	return 0;
}