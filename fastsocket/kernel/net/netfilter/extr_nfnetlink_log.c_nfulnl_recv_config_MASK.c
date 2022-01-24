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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfulnl_msg_config_mode {int /*<<< orphan*/  copy_range; int /*<<< orphan*/  copy_mode; } ;
struct nfulnl_msg_config_cmd {int command; } ;
struct nfulnl_instance {scalar_t__ peer_pid; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; int /*<<< orphan*/  res_id; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct nfulnl_instance*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 size_t NFULA_CFG_CMD ; 
 size_t NFULA_CFG_FLAGS ; 
 size_t NFULA_CFG_MODE ; 
 size_t NFULA_CFG_NLBUFSIZ ; 
 size_t NFULA_CFG_QTHRESH ; 
 size_t NFULA_CFG_TIMEOUT ; 
#define  NFULNL_CFG_CMD_BIND 131 
#define  NFULNL_CFG_CMD_PF_BIND 130 
#define  NFULNL_CFG_CMD_PF_UNBIND 129 
#define  NFULNL_CFG_CMD_UNBIND 128 
 struct nfgenmsg* FUNC2 (struct nlmsghdr const*) ; 
 int FUNC3 (struct nfulnl_instance*) ; 
 struct nfulnl_instance* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nfulnl_instance*) ; 
 struct nfulnl_instance* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfulnl_instance*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfulnl_logger ; 
 int /*<<< orphan*/  FUNC10 (struct nfulnl_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfulnl_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfulnl_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nfulnl_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfulnl_instance*,int /*<<< orphan*/ ) ; 
 void* FUNC15 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC16 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC17 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct sock *ctnl, struct sk_buff *skb,
		   const struct nlmsghdr *nlh,
		   const struct nlattr * const nfula[])
{
	struct nfgenmsg *nfmsg = FUNC2(nlh);
	u_int16_t group_num = FUNC19(nfmsg->res_id);
	struct nfulnl_instance *inst;
	struct nfulnl_msg_config_cmd *cmd = NULL;
	int ret = 0;

	if (nfula[NFULA_CFG_CMD]) {
		u_int8_t pf = nfmsg->nfgen_family;
		cmd = FUNC15(nfula[NFULA_CFG_CMD]);

		/* Commands without queue context */
		switch (cmd->command) {
		case NFULNL_CFG_CMD_PF_BIND:
			return FUNC8(pf, &nfulnl_logger);
		case NFULNL_CFG_CMD_PF_UNBIND:
			FUNC9(pf);
			return 0;
		}
	}

	inst = FUNC6(group_num);
	if (inst && inst->peer_pid != FUNC1(skb).pid) {
		ret = -EPERM;
		goto out_put;
	}

	if (cmd != NULL) {
		switch (cmd->command) {
		case NFULNL_CFG_CMD_BIND:
			if (inst) {
				ret = -EBUSY;
				goto out_put;
			}

			inst = FUNC4(group_num,
					       FUNC1(skb).pid);
			if (FUNC0(inst)) {
				ret = FUNC3(inst);
				goto out;
			}
			break;
		case NFULNL_CFG_CMD_UNBIND:
			if (!inst) {
				ret = -ENODEV;
				goto out;
			}

			FUNC5(inst);
			goto out;
		default:
			ret = -ENOTSUPP;
			break;
		}
	}

	if (nfula[NFULA_CFG_MODE]) {
		struct nfulnl_msg_config_mode *params;
		params = FUNC15(nfula[NFULA_CFG_MODE]);

		if (!inst) {
			ret = -ENODEV;
			goto out;
		}
		FUNC11(inst, params->copy_mode,
				FUNC18(params->copy_range));
	}

	if (nfula[NFULA_CFG_TIMEOUT]) {
		__be32 timeout = FUNC17(nfula[NFULA_CFG_TIMEOUT]);

		if (!inst) {
			ret = -ENODEV;
			goto out;
		}
		FUNC14(inst, FUNC18(timeout));
	}

	if (nfula[NFULA_CFG_NLBUFSIZ]) {
		__be32 nlbufsiz = FUNC17(nfula[NFULA_CFG_NLBUFSIZ]);

		if (!inst) {
			ret = -ENODEV;
			goto out;
		}
		FUNC12(inst, FUNC18(nlbufsiz));
	}

	if (nfula[NFULA_CFG_QTHRESH]) {
		__be32 qthresh = FUNC17(nfula[NFULA_CFG_QTHRESH]);

		if (!inst) {
			ret = -ENODEV;
			goto out;
		}
		FUNC13(inst, FUNC18(qthresh));
	}

	if (nfula[NFULA_CFG_FLAGS]) {
		__be16 flags = FUNC16(nfula[NFULA_CFG_FLAGS]);

		if (!inst) {
			ret = -ENODEV;
			goto out;
		}
		FUNC10(inst, FUNC19(flags));
	}

out_put:
	FUNC7(inst);
out:
	return ret;
}