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
struct selnl_msg_setenforce {int val; int /*<<< orphan*/  seqno; } ;
struct selnl_msg_policyload {int val; int /*<<< orphan*/  seqno; } ;
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct selnl_msg_setenforce* FUNC1 (struct nlmsghdr*) ; 
#define  SELNL_MSG_POLICYLOAD 129 
#define  SELNL_MSG_SETENFORCE 128 
 int /*<<< orphan*/  FUNC2 (struct selnl_msg_setenforce*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct nlmsghdr *nlh, int len, int msgtype, void *data)
{
	switch (msgtype) {
	case SELNL_MSG_SETENFORCE: {
		struct selnl_msg_setenforce *msg = FUNC1(nlh);

		FUNC2(msg, 0, len);
		msg->val = *((int *)data);
		break;
	}

	case SELNL_MSG_POLICYLOAD: {
		struct selnl_msg_policyload *msg = FUNC1(nlh);

		FUNC2(msg, 0, len);
		msg->seqno = *((u32 *)data);
		break;
	}

	default:
		FUNC0();
	}
}