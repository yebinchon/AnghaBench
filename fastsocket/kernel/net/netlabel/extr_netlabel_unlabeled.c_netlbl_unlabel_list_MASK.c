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
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLBL_UNLABEL_A_ACPTFLG ; 
 int /*<<< orphan*/  NLBL_UNLABEL_C_LIST ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 void* FUNC1 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  netlabel_unlabel_acceptflg ; 
 int /*<<< orphan*/  netlbl_unlabel_gnl_family ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	int ret_val = -EINVAL;
	struct sk_buff *ans_skb;
	void *data;

	ans_skb = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (ans_skb == NULL)
		goto list_failure;
	data = FUNC1(ans_skb, info, &netlbl_unlabel_gnl_family,
				 0, NLBL_UNLABEL_C_LIST);
	if (data == NULL) {
		ret_val = -ENOMEM;
		goto list_failure;
	}

	ret_val = FUNC4(ans_skb,
			     NLBL_UNLABEL_A_ACPTFLG,
			     netlabel_unlabel_acceptflg);
	if (ret_val != 0)
		goto list_failure;

	FUNC0(ans_skb, data);
	return FUNC2(ans_skb, info);

list_failure:
	FUNC3(ans_skb);
	return ret_val;
}