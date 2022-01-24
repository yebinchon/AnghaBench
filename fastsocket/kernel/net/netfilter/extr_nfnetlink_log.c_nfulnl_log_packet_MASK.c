#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct sk_buff {unsigned int len; TYPE_1__* dev; } ;
struct nfulnl_msg_packet_timestamp {int dummy; } ;
struct nfulnl_msg_packet_hw {int dummy; } ;
struct nfulnl_msg_packet_hdr {int dummy; } ;
struct TYPE_9__ {scalar_t__ expires; } ;
struct nfulnl_instance {int flags; unsigned int qthreshold; int copy_mode; unsigned int copy_range; unsigned int qlen; int flushtimeout; int /*<<< orphan*/  lock; TYPE_4__ timer; scalar_t__ skb; int /*<<< orphan*/  nlbufsiz; } ;
struct nfgenmsg {int dummy; } ;
struct TYPE_7__ {int qthreshold; int /*<<< orphan*/  group; } ;
struct TYPE_8__ {TYPE_2__ ulog; } ;
struct nf_loginfo {scalar_t__ type; TYPE_3__ u; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {unsigned int hard_header_len; } ;

/* Variables and functions */
 int HZ ; 
 int NFULNL_CFG_F_SEQ ; 
 int NFULNL_CFG_F_SEQ_GLOBAL ; 
#define  NFULNL_COPY_META 130 
#define  NFULNL_COPY_NONE 129 
#define  NFULNL_COPY_PACKET 128 
 scalar_t__ NF_LOG_TYPE_ULOG ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfulnl_instance*,struct sk_buff const*,unsigned int,int /*<<< orphan*/ ,unsigned int,struct net_device const*,struct net_device const*,struct nf_loginfo const*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfulnl_instance*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 struct nf_loginfo default_loginfo ; 
 int /*<<< orphan*/  FUNC4 (struct nfulnl_instance*) ; 
 struct nfulnl_instance* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfulnl_instance*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (struct sk_buff const*) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

void
FUNC15(u_int8_t pf,
		  unsigned int hooknum,
		  const struct sk_buff *skb,
		  const struct net_device *in,
		  const struct net_device *out,
		  const struct nf_loginfo *li_user,
		  const char *prefix)
{
	unsigned int size, data_len;
	struct nfulnl_instance *inst;
	const struct nf_loginfo *li;
	unsigned int qthreshold;
	unsigned int plen;

	if (li_user && li_user->type == NF_LOG_TYPE_ULOG)
		li = li_user;
	else
		li = &default_loginfo;

	inst = FUNC5(li->u.ulog.group);
	if (!inst)
		return;

	plen = 0;
	if (prefix)
		plen = FUNC13(prefix) + 1;

	/* FIXME: do we want to make the size calculation conditional based on
	 * what is actually present?  way more branches and checks, but more
	 * memory efficient... */
	size =    FUNC0(sizeof(struct nfgenmsg))
		+ FUNC8(sizeof(struct nfulnl_msg_packet_hdr))
		+ FUNC8(sizeof(u_int32_t))	/* ifindex */
		+ FUNC8(sizeof(u_int32_t))	/* ifindex */
#ifdef CONFIG_BRIDGE_NETFILTER
		+ nla_total_size(sizeof(u_int32_t))	/* ifindex */
		+ nla_total_size(sizeof(u_int32_t))	/* ifindex */
#endif
		+ FUNC8(sizeof(u_int32_t))	/* mark */
		+ FUNC8(sizeof(u_int32_t))	/* uid */
		+ FUNC8(sizeof(u_int32_t))	/* gid */
		+ FUNC8(plen)			/* prefix */
		+ FUNC8(sizeof(struct nfulnl_msg_packet_hw))
		+ FUNC8(sizeof(struct nfulnl_msg_packet_timestamp));

	if (in && FUNC9(skb)) {
		size +=   FUNC8(skb->dev->hard_header_len)
			+ FUNC8(sizeof(u_int16_t))	/* hwtype */
			+ FUNC8(sizeof(u_int16_t));	/* hwlen */
	}

	FUNC11(&inst->lock);

	if (inst->flags & NFULNL_CFG_F_SEQ)
		size += FUNC8(sizeof(u_int32_t));
	if (inst->flags & NFULNL_CFG_F_SEQ_GLOBAL)
		size += FUNC8(sizeof(u_int32_t));

	qthreshold = inst->qthreshold;
	/* per-rule qthreshold overrides per-instance */
	if (li->u.ulog.qthreshold)
		if (qthreshold > li->u.ulog.qthreshold)
			qthreshold = li->u.ulog.qthreshold;


	switch (inst->copy_mode) {
	case NFULNL_COPY_META:
	case NFULNL_COPY_NONE:
		data_len = 0;
		break;

	case NFULNL_COPY_PACKET:
		if (inst->copy_range == 0
		    || inst->copy_range > skb->len)
			data_len = skb->len;
		else
			data_len = inst->copy_range;

		size += FUNC8(data_len);
		break;

	default:
		goto unlock_and_release;
	}

	if (inst->skb &&
	    size > FUNC10(inst->skb) - sizeof(struct nfgenmsg)) {
		/* either the queue len is too high or we don't have
		 * enough room in the skb left. flush to userspace. */
		FUNC2(inst);
	}

	if (!inst->skb) {
		inst->skb = FUNC7(inst->nlbufsiz, size);
		if (!inst->skb)
			goto alloc_failure;
	}

	inst->qlen++;

	FUNC1(inst, skb, data_len, pf,
				hooknum, in, out, li, prefix, plen);

	if (inst->qlen >= qthreshold)
		FUNC2(inst);
	/* timer_pending always called within inst->lock, so there
	 * is no chance of a race here */
	else if (!FUNC14(&inst->timer)) {
		FUNC4(inst);
		inst->timer.expires = jiffies + (inst->flushtimeout*HZ/100);
		FUNC3(&inst->timer);
	}

unlock_and_release:
	FUNC12(&inst->lock);
	FUNC6(inst);
	return;

alloc_failure:
	/* FIXME: statistics */
	goto unlock_and_release;
}