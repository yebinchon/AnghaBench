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
struct mqueue_inode_info {int /*<<< orphan*/  wait_q; } ;
struct ext_wait_queue {int /*<<< orphan*/  state; int /*<<< orphan*/  task; int /*<<< orphan*/  list; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND ; 
 int /*<<< orphan*/  STATE_PENDING ; 
 int /*<<< orphan*/  STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct mqueue_inode_info*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ext_wait_queue* FUNC5 (struct mqueue_inode_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct mqueue_inode_info *info)
{
	struct ext_wait_queue *sender = FUNC5(info, SEND);

	if (!sender) {
		/* for poll */
		FUNC3(&info->wait_q);
		return;
	}
	if (FUNC1(sender->msg, info))
		return;
	FUNC0(&sender->list);
	sender->state = STATE_PENDING;
	FUNC4(sender->task);
	FUNC2();
	sender->state = STATE_READY;
}