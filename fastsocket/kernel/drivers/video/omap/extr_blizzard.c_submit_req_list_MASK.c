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
struct list_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  prev; } ;
struct TYPE_4__ {int /*<<< orphan*/  req_lock; TYPE_1__ pending_req_list; } ;

/* Variables and functions */
 TYPE_2__ blizzard ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct list_head *head)
{
	unsigned long flags;
	int process = 1;

	FUNC4(&blizzard.req_lock, flags);
	if (FUNC0(!FUNC1(&blizzard.pending_req_list)))
		process = 0;
	FUNC2(head, blizzard.pending_req_list.prev);
	FUNC5(&blizzard.req_lock, flags);

	if (process)
		FUNC3();
}