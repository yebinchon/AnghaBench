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
struct ecryptfs_msg_ctx {scalar_t__ state; int /*<<< orphan*/  mux; struct ecryptfs_message* msg; } ;
struct ecryptfs_message {int dummy; } ;

/* Variables and functions */
 scalar_t__ ECRYPTFS_MSG_CTX_STATE_DONE ; 
 int ENOMSG ; 
 long HZ ; 
 long ecryptfs_message_wait_timeout ; 
 int /*<<< orphan*/  FUNC0 (struct ecryptfs_msg_ctx*) ; 
 int /*<<< orphan*/  ecryptfs_msg_ctx_lists_mux ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (long) ; 

int FUNC4(struct ecryptfs_msg_ctx *msg_ctx,
			       struct ecryptfs_message **msg)
{
	signed long timeout = ecryptfs_message_wait_timeout * HZ;
	int rc = 0;

sleep:
	timeout = FUNC3(timeout);
	FUNC1(&ecryptfs_msg_ctx_lists_mux);
	FUNC1(&msg_ctx->mux);
	if (msg_ctx->state != ECRYPTFS_MSG_CTX_STATE_DONE) {
		if (timeout) {
			FUNC2(&msg_ctx->mux);
			FUNC2(&ecryptfs_msg_ctx_lists_mux);
			goto sleep;
		}
		rc = -ENOMSG;
	} else {
		*msg = msg_ctx->msg;
		msg_ctx->msg = NULL;
	}
	FUNC0(msg_ctx);
	FUNC2(&msg_ctx->mux);
	FUNC2(&ecryptfs_msg_ctx_lists_mux);
	return rc;
}