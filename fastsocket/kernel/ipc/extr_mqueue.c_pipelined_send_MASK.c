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
struct msg_msg {int dummy; } ;
struct mqueue_inode_info {int dummy; } ;
struct ext_wait_queue {int /*<<< orphan*/  state; int /*<<< orphan*/  task; int /*<<< orphan*/  list; struct msg_msg* msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_PENDING ; 
 int /*<<< orphan*/  STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mqueue_inode_info *info,
				  struct msg_msg *message,
				  struct ext_wait_queue *receiver)
{
	receiver->msg = message;
	FUNC0(&receiver->list);
	receiver->state = STATE_PENDING;
	FUNC2(receiver->task);
	FUNC1();
	receiver->state = STATE_READY;
}