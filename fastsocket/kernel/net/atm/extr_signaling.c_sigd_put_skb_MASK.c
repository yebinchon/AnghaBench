#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  truesize; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* sk_data_ready ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigd ; 
 int /*<<< orphan*/  sigd_sleep ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC11(struct sk_buff *skb)
{
#ifdef WAIT_FOR_DEMON
	DECLARE_WAITQUEUE(wait,current);

	add_wait_queue(&sigd_sleep,&wait);
	while (!sigd) {
		set_current_state(TASK_UNINTERRUPTIBLE);
		pr_debug("atmsvc: waiting for signaling demon...\n");
		schedule();
	}
	current->state = TASK_RUNNING;
	remove_wait_queue(&sigd_sleep,&wait);
#else
	if (!sigd) {
		FUNC4("atmsvc: no signaling demon\n");
		FUNC3(skb);
		return;
	}
#endif
	FUNC2(sigd,skb->truesize);
	FUNC9(&FUNC8(sigd)->sk_receive_queue,skb);
	FUNC8(sigd)->sk_data_ready(FUNC8(sigd), skb->len);
}