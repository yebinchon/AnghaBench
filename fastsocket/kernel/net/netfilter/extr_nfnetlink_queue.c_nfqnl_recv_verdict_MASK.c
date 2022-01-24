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
typedef  int /*<<< orphan*/  u_int16_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfqnl_msg_verdict_hdr {int /*<<< orphan*/  id; int /*<<< orphan*/  verdict; } ;
struct nfqnl_instance {scalar_t__ peer_pid; } ;
struct nfgenmsg {int /*<<< orphan*/  res_id; } ;
struct nf_queue_entry {TYPE_1__* skb; } ;
struct TYPE_4__ {scalar_t__ pid; } ;
struct TYPE_3__ {void* mark; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int EPERM ; 
 TYPE_2__ FUNC0 (struct sk_buff*) ; 
 size_t NFQA_MARK ; 
 size_t NFQA_PAYLOAD ; 
 size_t NFQA_VERDICT_HDR ; 
 unsigned int NF_DROP ; 
 unsigned int NF_MAX_VERDICT ; 
 unsigned int NF_VERDICT_MASK ; 
 struct nfgenmsg* FUNC1 (struct nlmsghdr const*) ; 
 struct nf_queue_entry* FUNC2 (struct nfqnl_instance*,void*) ; 
 struct nfqnl_instance* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_queue_entry*,unsigned int) ; 
 scalar_t__ FUNC5 (struct nfqnl_msg_verdict_hdr*,int /*<<< orphan*/ ,struct nf_queue_entry*) ; 
 struct nfqnl_msg_verdict_hdr* FUNC6 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr const* const) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct sock *ctnl, struct sk_buff *skb,
		   const struct nlmsghdr *nlh,
		   const struct nlattr * const nfqa[])
{
	struct nfgenmsg *nfmsg = FUNC1(nlh);
	u_int16_t queue_num = FUNC10(nfmsg->res_id);

	struct nfqnl_msg_verdict_hdr *vhdr;
	struct nfqnl_instance *queue;
	unsigned int verdict;
	struct nf_queue_entry *entry;
	int err;

	FUNC11();
	queue = FUNC3(queue_num);
	if (!queue) {
		err = -ENODEV;
		goto err_out_unlock;
	}

	if (queue->peer_pid != FUNC0(skb).pid) {
		err = -EPERM;
		goto err_out_unlock;
	}

	if (!nfqa[NFQA_VERDICT_HDR]) {
		err = -EINVAL;
		goto err_out_unlock;
	}

	vhdr = FUNC6(nfqa[NFQA_VERDICT_HDR]);
	verdict = FUNC9(vhdr->verdict);

	if ((verdict & NF_VERDICT_MASK) > NF_MAX_VERDICT) {
		err = -EINVAL;
		goto err_out_unlock;
	}

	entry = FUNC2(queue, FUNC9(vhdr->id));
	if (entry == NULL) {
		err = -ENOENT;
		goto err_out_unlock;
	}
	FUNC12();

	if (nfqa[NFQA_PAYLOAD]) {
		if (FUNC5(FUNC6(nfqa[NFQA_PAYLOAD]),
				 FUNC8(nfqa[NFQA_PAYLOAD]), entry) < 0)
			verdict = NF_DROP;
	}

	if (nfqa[NFQA_MARK])
		entry->skb->mark = FUNC9(FUNC7(nfqa[NFQA_MARK]));

	FUNC4(entry, verdict);
	return 0;

err_out_unlock:
	FUNC12();
	return err;
}