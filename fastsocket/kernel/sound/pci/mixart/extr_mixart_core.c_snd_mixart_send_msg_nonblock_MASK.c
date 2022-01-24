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
typedef  int /*<<< orphan*/  u32 ;
struct mixart_msg {int dummy; } ;
struct mixart_mgr {int /*<<< orphan*/  msg_processed; int /*<<< orphan*/  msg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mixart_mgr*,struct mixart_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct mixart_mgr *mgr, struct mixart_msg *request)
{
	u32 message_frame;
	unsigned long flags;
	int err;

	/* just send the message (do not mark it as a pending one) */
	FUNC2(&mgr->msg_lock, flags);
	err = FUNC1(mgr, request, MSG_DEFAULT_SIZE, 0, &message_frame);
	FUNC3(&mgr->msg_lock, flags);

	/* the answer will be handled by snd_struct mixart_msgasklet()  */
	FUNC0(&mgr->msg_processed);

	return err;
}