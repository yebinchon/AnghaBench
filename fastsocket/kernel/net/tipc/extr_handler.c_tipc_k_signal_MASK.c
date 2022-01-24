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
struct queue_item {unsigned long data; int /*<<< orphan*/  next_signal; int /*<<< orphan*/  handler; } ;
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 unsigned int ENOMEM ; 
 unsigned int ENOPROTOOPT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  handler_enabled ; 
 struct queue_item* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qitem_lock ; 
 int /*<<< orphan*/  signal_queue_head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_queue_item_cache ; 
 int /*<<< orphan*/  tipc_tasklet ; 

unsigned int FUNC6(Handler routine, unsigned long argument)
{
	struct queue_item *item;

	if (!handler_enabled) {
		FUNC0("Signal request ignored by handler\n");
		return -ENOPROTOOPT;
	}

	FUNC3(&qitem_lock);
	item = FUNC1(tipc_queue_item_cache, GFP_ATOMIC);
	if (!item) {
		FUNC0("Signal queue out of memory\n");
		FUNC4(&qitem_lock);
		return -ENOMEM;
	}
	item->handler = routine;
	item->data = argument;
	FUNC2(&item->next_signal, &signal_queue_head);
	FUNC4(&qitem_lock);
	FUNC5(&tipc_tasklet);
	return 0;
}