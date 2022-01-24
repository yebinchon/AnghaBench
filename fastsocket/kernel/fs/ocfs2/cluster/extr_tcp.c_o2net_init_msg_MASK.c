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
typedef  int /*<<< orphan*/  u16 ;
struct o2net_msg {void* key; scalar_t__ status; void* sys_status; void* msg_type; void* data_len; void* magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  O2NET_ERR_NONE ; 
 int /*<<< orphan*/  O2NET_MSG_MAGIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct o2net_msg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct o2net_msg *msg, u16 data_len, u16 msg_type, u32 key)
{
	FUNC2(msg, 0, sizeof(struct o2net_msg));
	msg->magic = FUNC0(O2NET_MSG_MAGIC);
	msg->data_len = FUNC0(data_len);
	msg->msg_type = FUNC0(msg_type);
	msg->sys_status = FUNC1(O2NET_ERR_NONE);
	msg->status = 0;
	msg->key = FUNC1(key);
}