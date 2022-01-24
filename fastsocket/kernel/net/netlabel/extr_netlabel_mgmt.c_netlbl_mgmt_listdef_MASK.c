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
struct netlbl_dom_map {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLBL_MGMT_C_LISTDEF ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 void* FUNC1 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct netlbl_dom_map* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netlbl_mgmt_gnl_family ; 
 int FUNC5 (struct sk_buff*,struct netlbl_dom_map*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	int ret_val = -ENOMEM;
	struct sk_buff *ans_skb = NULL;
	void *data;
	struct netlbl_dom_map *entry;

	ans_skb = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (ans_skb == NULL)
		return -ENOMEM;
	data = FUNC1(ans_skb, info, &netlbl_mgmt_gnl_family,
				 0, NLBL_MGMT_C_LISTDEF);
	if (data == NULL)
		goto listdef_failure;

	FUNC7();
	entry = FUNC4(NULL);
	if (entry == NULL) {
		ret_val = -ENOENT;
		goto listdef_failure_lock;
	}
	ret_val = FUNC5(ans_skb, entry);
	FUNC8();
	if (ret_val != 0)
		goto listdef_failure;

	FUNC0(ans_skb, data);
	return FUNC2(ans_skb, info);

listdef_failure_lock:
	FUNC8();
listdef_failure:
	FUNC3(ans_skb);
	return ret_val;
}