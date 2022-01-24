#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {TYPE_1__ print_buf; } ;

/* Variables and functions */
 scalar_t__ BCLINK_LOG_BUF_SIZE ; 
 int /*<<< orphan*/  bc_lock ; 
 int /*<<< orphan*/ * bcbearer ; 
 TYPE_2__* bcl ; 
 int /*<<< orphan*/ * bclink ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(void)
{
	FUNC1(&bc_lock);
	if (bcbearer) {
		FUNC3(bcl);
		if (BCLINK_LOG_BUF_SIZE)
			FUNC0(bcl->print_buf.buf);
		bcl = NULL;
		FUNC0(bclink);
		bclink = NULL;
		FUNC0(bcbearer);
		bcbearer = NULL;
	}
	FUNC2(&bc_lock);
}