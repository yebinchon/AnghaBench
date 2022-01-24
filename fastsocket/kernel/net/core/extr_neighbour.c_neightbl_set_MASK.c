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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {scalar_t__ family; int /*<<< orphan*/  lock; void* gc_interval; void* gc_thresh3; void* gc_thresh2; void* gc_thresh1; int /*<<< orphan*/  id; struct neigh_table* next; } ;
struct neigh_parms {void* locktime; void* proxy_delay; void* anycast_delay; void* retrans_time; void* delay_probe_time; void* gc_staletime; void* base_reachable_time; void* mcast_probes; void* ucast_probes; void* app_probes; void* proxy_qlen; void* queue_len; } ;
struct ndtmsg {scalar_t__ ndtm_family; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 size_t NDTA_GC_INTERVAL ; 
 int /*<<< orphan*/  NDTA_MAX ; 
 size_t NDTA_NAME ; 
 size_t NDTA_PARMS ; 
 size_t NDTA_THRESH1 ; 
 size_t NDTA_THRESH2 ; 
 size_t NDTA_THRESH3 ; 
#define  NDTPA_ANYCAST_DELAY 139 
#define  NDTPA_APP_PROBES 138 
#define  NDTPA_BASE_REACHABLE_TIME 137 
#define  NDTPA_DELAY_PROBE_TIME 136 
#define  NDTPA_GC_STALETIME 135 
 size_t NDTPA_IFINDEX ; 
#define  NDTPA_LOCKTIME 134 
 int NDTPA_MAX ; 
#define  NDTPA_MCAST_PROBES 133 
#define  NDTPA_PROXY_DELAY 132 
#define  NDTPA_PROXY_QLEN 131 
#define  NDTPA_QUEUE_LEN 130 
#define  NDTPA_RETRANS_TIME 129 
#define  NDTPA_UCAST_PROBES 128 
 struct neigh_parms* FUNC0 (struct neigh_table*,struct net*,int) ; 
 struct neigh_table* neigh_tables ; 
 int /*<<< orphan*/  neigh_tbl_lock ; 
 int /*<<< orphan*/  nl_neightbl_policy ; 
 int /*<<< orphan*/  nl_ntbl_parm_policy ; 
 void* FUNC1 (struct nlattr*) ; 
 void* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct ndtmsg* FUNC5 (struct nlmsghdr*) ; 
 int FUNC6 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC9(skb->sk);
	struct neigh_table *tbl;
	struct ndtmsg *ndtmsg;
	struct nlattr *tb[NDTA_MAX+1];
	int err;

	err = FUNC6(nlh, sizeof(*ndtmsg), tb, NDTA_MAX,
			  nl_neightbl_policy);
	if (err < 0)
		goto errout;

	if (tb[NDTA_NAME] == NULL) {
		err = -EINVAL;
		goto errout;
	}

	ndtmsg = FUNC5(nlh);
	FUNC7(&neigh_tbl_lock);
	for (tbl = neigh_tables; tbl; tbl = tbl->next) {
		if (ndtmsg->ndtm_family && tbl->family != ndtmsg->ndtm_family)
			continue;

		if (FUNC4(tb[NDTA_NAME], tbl->id) == 0)
			break;
	}

	if (tbl == NULL) {
		err = -ENOENT;
		goto errout_locked;
	}

	/*
	 * We acquire tbl->lock to be nice to the periodic timers and
	 * make sure they always see a consistent set of values.
	 */
	FUNC10(&tbl->lock);

	if (tb[NDTA_PARMS]) {
		struct nlattr *tbp[NDTPA_MAX+1];
		struct neigh_parms *p;
		int i, ifindex = 0;

		err = FUNC3(tbp, NDTPA_MAX, tb[NDTA_PARMS],
				       nl_ntbl_parm_policy);
		if (err < 0)
			goto errout_tbl_lock;

		if (tbp[NDTPA_IFINDEX])
			ifindex = FUNC2(tbp[NDTPA_IFINDEX]);

		p = FUNC0(tbl, net, ifindex);
		if (p == NULL) {
			err = -ENOENT;
			goto errout_tbl_lock;
		}

		for (i = 1; i <= NDTPA_MAX; i++) {
			if (tbp[i] == NULL)
				continue;

			switch (i) {
			case NDTPA_QUEUE_LEN:
				p->queue_len = FUNC2(tbp[i]);
				break;
			case NDTPA_PROXY_QLEN:
				p->proxy_qlen = FUNC2(tbp[i]);
				break;
			case NDTPA_APP_PROBES:
				p->app_probes = FUNC2(tbp[i]);
				break;
			case NDTPA_UCAST_PROBES:
				p->ucast_probes = FUNC2(tbp[i]);
				break;
			case NDTPA_MCAST_PROBES:
				p->mcast_probes = FUNC2(tbp[i]);
				break;
			case NDTPA_BASE_REACHABLE_TIME:
				p->base_reachable_time = FUNC1(tbp[i]);
				break;
			case NDTPA_GC_STALETIME:
				p->gc_staletime = FUNC1(tbp[i]);
				break;
			case NDTPA_DELAY_PROBE_TIME:
				p->delay_probe_time = FUNC1(tbp[i]);
				break;
			case NDTPA_RETRANS_TIME:
				p->retrans_time = FUNC1(tbp[i]);
				break;
			case NDTPA_ANYCAST_DELAY:
				p->anycast_delay = FUNC1(tbp[i]);
				break;
			case NDTPA_PROXY_DELAY:
				p->proxy_delay = FUNC1(tbp[i]);
				break;
			case NDTPA_LOCKTIME:
				p->locktime = FUNC1(tbp[i]);
				break;
			}
		}
	}

	if (tb[NDTA_THRESH1])
		tbl->gc_thresh1 = FUNC2(tb[NDTA_THRESH1]);

	if (tb[NDTA_THRESH2])
		tbl->gc_thresh2 = FUNC2(tb[NDTA_THRESH2]);

	if (tb[NDTA_THRESH3])
		tbl->gc_thresh3 = FUNC2(tb[NDTA_THRESH3]);

	if (tb[NDTA_GC_INTERVAL])
		tbl->gc_interval = FUNC1(tb[NDTA_GC_INTERVAL]);

	err = 0;

errout_tbl_lock:
	FUNC11(&tbl->lock);
errout_locked:
	FUNC8(&neigh_tbl_lock);
errout:
	return err;
}