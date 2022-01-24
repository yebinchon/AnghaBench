#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct tipc_genlmsghdr {int cmd; int /*<<< orphan*/  dest; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_len; } ;
struct genl_info {struct tipc_genlmsghdr* userhdr; struct nlmsghdr* nlhdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ GENL_HDRLEN ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlmsghdr*,scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int TIPC_CMD_NOT_NET_ADMIN ; 
 scalar_t__ TIPC_GENL_HDRLEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC6 (struct nlmsghdr*,struct nlmsghdr*,int) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *rep_buf;
	struct nlmsghdr *rep_nlh;
	struct nlmsghdr *req_nlh = info->nlhdr;
	struct tipc_genlmsghdr *req_userhdr = info->userhdr;
	int hdr_space = FUNC3(GENL_HDRLEN + TIPC_GENL_HDRLEN);
	u16 cmd;

	if ((req_userhdr->cmd & 0xC000) && (!FUNC4(CAP_NET_ADMIN)))
		cmd = TIPC_CMD_NOT_NET_ADMIN;
	else
		cmd = req_userhdr->cmd;

	rep_buf = FUNC9(req_userhdr->dest, cmd,
			FUNC1(req_nlh) + GENL_HDRLEN + TIPC_GENL_HDRLEN,
			FUNC2(req_nlh, GENL_HDRLEN + TIPC_GENL_HDRLEN),
			hdr_space);

	if (rep_buf) {
		FUNC8(rep_buf, hdr_space);
		rep_nlh = FUNC7(rep_buf);
		FUNC6(rep_nlh, req_nlh, hdr_space);
		rep_nlh->nlmsg_len = rep_buf->len;
		FUNC5(&init_net, rep_buf, FUNC0(skb).pid);
	}

	return 0;
}