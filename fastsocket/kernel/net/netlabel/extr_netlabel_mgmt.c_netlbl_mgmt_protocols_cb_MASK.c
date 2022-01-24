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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLBL_MGMT_A_PROTOCOL ; 
 int /*<<< orphan*/  NLBL_MGMT_C_PROTOCOLS ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlbl_mgmt_gnl_family ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
				    struct netlink_callback *cb,
				    u32 protocol)
{
	int ret_val = -ENOMEM;
	void *data;

	data = FUNC3(skb, FUNC0(cb->skb).pid, cb->nlh->nlmsg_seq,
			   &netlbl_mgmt_gnl_family, NLM_F_MULTI,
			   NLBL_MGMT_C_PROTOCOLS);
	if (data == NULL)
		goto protocols_cb_failure;

	ret_val = FUNC4(skb, NLBL_MGMT_A_PROTOCOL, protocol);
	if (ret_val != 0)
		goto protocols_cb_failure;

	return FUNC2(skb, data);

protocols_cb_failure:
	FUNC1(skb, data);
	return ret_val;
}