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
struct TYPE_2__ {scalar_t__ expect_close; int /*<<< orphan*/  timer; int /*<<< orphan*/  open; } ;

/* Variables and functions */
 TYPE_1__ at91wdt_private ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	FUNC0(0, &at91wdt_private.open);

	/* stop internal ping */
	if (!at91wdt_private.expect_close)
		FUNC1(&at91wdt_private.timer);

	at91wdt_private.expect_close = 0;
	return 0;
}