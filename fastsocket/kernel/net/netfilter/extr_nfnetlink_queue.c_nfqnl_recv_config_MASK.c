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
typedef  int /*<<< orphan*/  u_int16_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfqnl_msg_config_params {int /*<<< orphan*/  copy_range; int /*<<< orphan*/  copy_mode; } ;
struct nfqnl_msg_config_cmd {int command; int /*<<< orphan*/  pf; } ;
struct nfqnl_instance {scalar_t__ peer_pid; int flags; int /*<<< orphan*/  lock; void* queue_maxlen; } ;
struct nfgenmsg {int /*<<< orphan*/  res_id; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct nfqnl_instance*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 size_t NFQA_CFG_CMD ; 
 size_t NFQA_CFG_FLAGS ; 
 int NFQA_CFG_F_MAX ; 
 size_t NFQA_CFG_MASK ; 
 size_t NFQA_CFG_PARAMS ; 
 size_t NFQA_CFG_QUEUE_MAXLEN ; 
#define  NFQNL_CFG_CMD_BIND 131 
#define  NFQNL_CFG_CMD_PF_BIND 130 
#define  NFQNL_CFG_CMD_PF_UNBIND 129 
#define  NFQNL_CFG_CMD_UNBIND 128 
 struct nfgenmsg* FUNC2 (struct nlmsghdr const*) ; 
 int FUNC3 (struct nfqnl_instance*) ; 
 struct nfqnl_instance* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nfqnl_instance*) ; 
 struct nfqnl_instance* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfqh ; 
 int /*<<< orphan*/  FUNC9 (struct nfqnl_instance*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC10 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr const* const) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(struct sock *ctnl, struct sk_buff *skb,
		  const struct nlmsghdr *nlh,
		  const struct nlattr * const nfqa[])
{
	struct nfgenmsg *nfmsg = FUNC2(nlh);
	u_int16_t queue_num = FUNC13(nfmsg->res_id);
	struct nfqnl_instance *queue;
	struct nfqnl_msg_config_cmd *cmd = NULL;
	int ret = 0;

	if (nfqa[NFQA_CFG_CMD]) {
		cmd = FUNC10(nfqa[NFQA_CFG_CMD]);

		/* Commands without queue context - might sleep */
		switch (cmd->command) {
		case NFQNL_CFG_CMD_PF_BIND:
			return FUNC7(FUNC13(cmd->pf),
							 &nfqh);
		case NFQNL_CFG_CMD_PF_UNBIND:
			return FUNC8(FUNC13(cmd->pf),
							   &nfqh);
		}
	}

	FUNC14();
	queue = FUNC6(queue_num);
	if (queue && queue->peer_pid != FUNC1(skb).pid) {
		ret = -EPERM;
		goto err_out_unlock;
	}

	if (cmd != NULL) {
		switch (cmd->command) {
		case NFQNL_CFG_CMD_BIND:
			if (queue) {
				ret = -EBUSY;
				goto err_out_unlock;
			}
			queue = FUNC4(queue_num, FUNC1(skb).pid);
			if (FUNC0(queue)) {
				ret = FUNC3(queue);
				goto err_out_unlock;
			}
			break;
		case NFQNL_CFG_CMD_UNBIND:
			if (!queue) {
				ret = -ENODEV;
				goto err_out_unlock;
			}
			FUNC5(queue);
			break;
		case NFQNL_CFG_CMD_PF_BIND:
		case NFQNL_CFG_CMD_PF_UNBIND:
			break;
		default:
			ret = -ENOTSUPP;
			break;
		}
	}

	if (nfqa[NFQA_CFG_PARAMS]) {
		struct nfqnl_msg_config_params *params;

		if (!queue) {
			ret = -ENODEV;
			goto err_out_unlock;
		}
		params = FUNC10(nfqa[NFQA_CFG_PARAMS]);
		FUNC9(queue, params->copy_mode,
				FUNC12(params->copy_range));
	}

	if (nfqa[NFQA_CFG_QUEUE_MAXLEN]) {
		__be32 *queue_maxlen;

		if (!queue) {
			ret = -ENODEV;
			goto err_out_unlock;
		}
		queue_maxlen = FUNC10(nfqa[NFQA_CFG_QUEUE_MAXLEN]);
		FUNC16(&queue->lock);
		queue->queue_maxlen = FUNC12(*queue_maxlen);
		FUNC17(&queue->lock);
	}

	if (nfqa[NFQA_CFG_FLAGS]) {
		__u32 flags, mask;

		if (!queue) {
			ret = -ENODEV;
			goto err_out_unlock;
		}

		if (!nfqa[NFQA_CFG_MASK]) {
			/* A mask is needed to specify which flags are being
			 * changed.
			 */
			ret = -EINVAL;
			goto err_out_unlock;
		}

		flags = FUNC12(FUNC11(nfqa[NFQA_CFG_FLAGS]));
		mask = FUNC12(FUNC11(nfqa[NFQA_CFG_MASK]));

		if (flags >= NFQA_CFG_F_MAX) {
			ret = -EOPNOTSUPP;
			goto err_out_unlock;
		}

		FUNC16(&queue->lock);
		queue->flags &= ~mask;
		queue->flags |= flags & mask;
		FUNC17(&queue->lock);
	}

err_out_unlock:
	FUNC15();
	return ret;
}