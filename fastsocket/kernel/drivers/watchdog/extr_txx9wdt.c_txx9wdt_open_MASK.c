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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcr; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int TXx9_TMTCR_TCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,struct file*) ; 
 scalar_t__ nowayout ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txx9wdt_alive ; 
 TYPE_1__* txx9wdt_reg ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	if (FUNC4(0, &txx9wdt_alive))
		return -EBUSY;

	if (FUNC1(&txx9wdt_reg->tcr) & TXx9_TMTCR_TCE) {
		FUNC2(0, &txx9wdt_alive);
		return -EBUSY;
	}

	if (nowayout)
		FUNC0(THIS_MODULE);

	FUNC5();
	return FUNC3(inode, file);
}