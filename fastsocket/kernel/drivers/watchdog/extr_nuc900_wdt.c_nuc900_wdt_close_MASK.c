#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int expect_close; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* nuc900_wdt ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  nuc900wdt_busy ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (nuc900_wdt->expect_close == 42)
		FUNC3();
	else {
		FUNC1(&nuc900_wdt->pdev->dev,
			"Unexpected close, not stopping watchdog!\n");
		FUNC2();
	}

	nuc900_wdt->expect_close = 0;
	FUNC0(0, &nuc900wdt_busy);
	return 0;
}