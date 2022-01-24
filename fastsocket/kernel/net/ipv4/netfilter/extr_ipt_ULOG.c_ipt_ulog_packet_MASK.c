#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t data_len; unsigned int hook; char* prefix; scalar_t__ mac_len; char* indev_name; char* outdev_name; int /*<<< orphan*/  payload; int /*<<< orphan*/  mac; int /*<<< orphan*/  mark; int /*<<< orphan*/  timestamp_usec; int /*<<< orphan*/  timestamp_sec; } ;
typedef  TYPE_1__ ulog_packet_msg_t ;
struct TYPE_10__ {scalar_t__ expires; } ;
struct TYPE_9__ {int qlen; TYPE_4__ timer; struct nlmsghdr* lastnlh; void* skb; } ;
typedef  TYPE_2__ ulog_buff_t ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_11__ {scalar_t__ tv64; } ;
struct sk_buff {size_t len; scalar_t__ mac_header; scalar_t__ network_header; int /*<<< orphan*/  mark; TYPE_5__ tstamp; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_flags; } ;
struct net_device {scalar_t__ hard_header_len; char const* name; } ;
struct ipt_ulog_info {size_t copy_range; int qthreshold; char* prefix; int /*<<< orphan*/  nl_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int HZ ; 
 TYPE_1__* FUNC1 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_DONE ; 
 struct nlmsghdr* FUNC2 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ ULOG_MAC_LEN ; 
 int /*<<< orphan*/  ULOG_NL_EVENT ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int flushtimeout ; 
 scalar_t__ jiffies ; 
 struct timeval FUNC8 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff const*) ; 
 size_t FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 void* FUNC19 (size_t) ; 
 TYPE_2__* ulog_buffers ; 
 int /*<<< orphan*/  ulog_lock ; 
 int /*<<< orphan*/  FUNC20 (unsigned int) ; 

__attribute__((used)) static void FUNC21(unsigned int hooknum,
			    const struct sk_buff *skb,
			    const struct net_device *in,
			    const struct net_device *out,
			    const struct ipt_ulog_info *loginfo,
			    const char *prefix)
{
	ulog_buff_t *ub;
	ulog_packet_msg_t *pm;
	size_t size, copy_len;
	struct nlmsghdr *nlh;
	struct timeval tv;

	/* ffs == find first bit set, necessary because userspace
	 * is already shifting groupnumber, but we need unshifted.
	 * ffs() returns [1..32], we need [0..31] */
	unsigned int groupnum = FUNC7(loginfo->nl_group) - 1;

	/* calculate the size of the skb needed */
	if (loginfo->copy_range == 0 || loginfo->copy_range > skb->len)
		copy_len = skb->len;
	else
		copy_len = loginfo->copy_range;

	size = FUNC3(sizeof(*pm) + copy_len);

	ub = &ulog_buffers[groupnum];

	FUNC15(&ulog_lock);

	if (!ub->skb) {
		if (!(ub->skb = FUNC19(size)))
			goto alloc_failure;
	} else if (ub->qlen >= loginfo->qthreshold ||
		   size > FUNC14(ub->skb)) {
		/* either the queue len is too high or we don't have
		 * enough room in nlskb left. send it to userspace. */

		FUNC20(groupnum);

		if (!(ub->skb = FUNC19(size)))
			goto alloc_failure;
	}

	FUNC10("ipt_ULOG: qlen %d, qthreshold %Zu\n", ub->qlen,
		 loginfo->qthreshold);

	/* NLMSG_PUT contains a hidden goto nlmsg_failure !!! */
	nlh = FUNC2(ub->skb, 0, ub->qlen, ULOG_NL_EVENT,
			sizeof(*pm)+copy_len);
	ub->qlen++;

	pm = FUNC1(nlh);

	/* We might not have a timestamp, get one */
	if (skb->tstamp.tv64 == 0)
		FUNC5((struct sk_buff *)skb);

	/* copy hook, prefix, timestamp, payload, etc. */
	pm->data_len = copy_len;
	tv = FUNC8(skb->tstamp);
	FUNC11(tv.tv_sec, &pm->timestamp_sec);
	FUNC11(tv.tv_usec, &pm->timestamp_usec);
	FUNC11(skb->mark, &pm->mark);
	pm->hook = hooknum;
	if (prefix != NULL)
		FUNC17(pm->prefix, prefix, sizeof(pm->prefix));
	else if (loginfo->prefix[0] != '\0')
		FUNC17(pm->prefix, loginfo->prefix, sizeof(pm->prefix));
	else
		*(pm->prefix) = '\0';

	if (in && in->hard_header_len > 0
	    && skb->mac_header != skb->network_header
	    && in->hard_header_len <= ULOG_MAC_LEN) {
		FUNC9(pm->mac, FUNC13(skb), in->hard_header_len);
		pm->mac_len = in->hard_header_len;
	} else
		pm->mac_len = 0;

	if (in)
		FUNC17(pm->indev_name, in->name, sizeof(pm->indev_name));
	else
		pm->indev_name[0] = '\0';

	if (out)
		FUNC17(pm->outdev_name, out->name, sizeof(pm->outdev_name));
	else
		pm->outdev_name[0] = '\0';

	/* copy_len <= skb->len, so can't fail. */
	if (FUNC12(skb, 0, pm->payload, copy_len) < 0)
		FUNC0();

	/* check if we are building multi-part messages */
	if (ub->qlen > 1)
		ub->lastnlh->nlmsg_flags |= NLM_F_MULTI;

	ub->lastnlh = nlh;

	/* if timer isn't already running, start it */
	if (!FUNC18(&ub->timer)) {
		ub->timer.expires = jiffies + flushtimeout * HZ / 100;
		FUNC6(&ub->timer);
	}

	/* if threshold is reached, send message to userspace */
	if (ub->qlen >= loginfo->qthreshold) {
		if (loginfo->qthreshold > 1)
			nlh->nlmsg_type = NLMSG_DONE;
		FUNC20(groupnum);
	}

	FUNC16(&ulog_lock);

	return;

nlmsg_failure:
	FUNC4("ipt_ULOG: error during NLMSG_PUT\n");

alloc_failure:
	FUNC4("ipt_ULOG: Error building netlink message\n");

	FUNC16(&ulog_lock);
}