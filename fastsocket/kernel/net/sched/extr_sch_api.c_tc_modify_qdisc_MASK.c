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
typedef  scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_parent; scalar_t__ tcm_handle; int /*<<< orphan*/  tcm_ifindex; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {struct netdev_queue rx_queue; struct Qdisc* qdisc; } ;
struct net {int dummy; } ;
struct Qdisc {scalar_t__ handle; struct netdev_queue* dev_queue; TYPE_2__* ops; int /*<<< orphan*/  refcnt; } ;
struct TYPE_4__ {TYPE_1__* cl_ops; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {struct netdev_queue* (* select_queue ) (struct Qdisc*,struct tcmsg*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int ELOOP ; 
 int ENODEV ; 
 int ENOENT ; 
 struct tcmsg* FUNC0 (struct nlmsghdr*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 size_t TCA_KIND ; 
 int /*<<< orphan*/  TCA_MAX ; 
 scalar_t__ TC_H_INGRESS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ TC_H_ROOT ; 
 struct net_device* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct Qdisc*,struct Qdisc*,int /*<<< orphan*/ ) ; 
 struct net init_net ; 
 struct netdev_queue* FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct Qdisc*,struct nlattr**) ; 
 struct Qdisc* FUNC10 (struct net_device*,struct netdev_queue*,struct Qdisc*,scalar_t__,scalar_t__,struct nlattr**,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int FUNC12 (struct net_device*,struct Qdisc*,struct sk_buff*,struct nlmsghdr*,scalar_t__,struct Qdisc*,int /*<<< orphan*/ *) ; 
 struct Qdisc* FUNC13 (struct Qdisc*,scalar_t__) ; 
 struct Qdisc* FUNC14 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct nlmsghdr*,scalar_t__,int /*<<< orphan*/ *,struct Qdisc*) ; 
 struct net* FUNC16 (int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC17 (struct Qdisc*,struct tcmsg*) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct nlmsghdr *n, void *arg)
{
	struct net *net = FUNC16(skb->sk);
	struct tcmsg *tcm;
	struct nlattr *tca[TCA_MAX + 1];
	struct net_device *dev;
	u32 clid;
	struct Qdisc *q, *p;
	int err;

	if (net != &init_net)
		return -EINVAL;

replay:
	/* Reinit, just in case something touches this. */
	tcm = FUNC0(n);
	clid = tcm->tcm_parent;
	q = p = NULL;

	if ((dev = FUNC3(&init_net, tcm->tcm_ifindex)) == NULL)
		return -ENODEV;

	err = FUNC8(n, sizeof(*tcm), tca, TCA_MAX, NULL);
	if (err < 0)
		return err;

	if (clid) {
		if (clid != TC_H_ROOT) {
			if (clid != TC_H_INGRESS) {
				if ((p = FUNC14(dev, FUNC1(clid))) == NULL)
					return -ENOENT;
				q = FUNC13(p, clid);
			} else { /*ingress */
				q = dev->rx_queue.qdisc_sleeping;
			}
		} else {
			q = dev->qdisc;
		}

		/* It may be default qdisc, ignore it */
		if (q && q->handle == 0)
			q = NULL;

		if (!q || !tcm->tcm_handle || q->handle != tcm->tcm_handle) {
			if (tcm->tcm_handle) {
				if (q && !(n->nlmsg_flags&NLM_F_REPLACE))
					return -EEXIST;
				if (FUNC2(tcm->tcm_handle))
					return -EINVAL;
				if ((q = FUNC14(dev, tcm->tcm_handle)) == NULL)
					goto create_n_graft;
				if (n->nlmsg_flags&NLM_F_EXCL)
					return -EEXIST;
				if (tca[TCA_KIND] && FUNC7(tca[TCA_KIND], q->ops->id))
					return -EINVAL;
				if (q == p ||
				    (p && FUNC5(q, p, 0)))
					return -ELOOP;
				FUNC4(&q->refcnt);
				goto graft;
			} else {
				if (q == NULL)
					goto create_n_graft;

				/* This magic test requires explanation.
				 *
				 *   We know, that some child q is already
				 *   attached to this parent and have choice:
				 *   either to change it or to create/graft new one.
				 *
				 *   1. We are allowed to create/graft only
				 *   if CREATE and REPLACE flags are set.
				 *
				 *   2. If EXCL is set, requestor wanted to say,
				 *   that qdisc tcm_handle is not expected
				 *   to exist, so that we choose create/graft too.
				 *
				 *   3. The last case is when no flags are set.
				 *   Alas, it is sort of hole in API, we
				 *   cannot decide what to do unambiguously.
				 *   For now we select create/graft, if
				 *   user gave KIND, which does not match existing.
				 */
				if ((n->nlmsg_flags&NLM_F_CREATE) &&
				    (n->nlmsg_flags&NLM_F_REPLACE) &&
				    ((n->nlmsg_flags&NLM_F_EXCL) ||
				     (tca[TCA_KIND] &&
				      FUNC7(tca[TCA_KIND], q->ops->id))))
					goto create_n_graft;
			}
		}
	} else {
		if (!tcm->tcm_handle)
			return -EINVAL;
		q = FUNC14(dev, tcm->tcm_handle);
	}

	/* Change qdisc parameters */
	if (q == NULL)
		return -ENOENT;
	if (n->nlmsg_flags&NLM_F_EXCL)
		return -EEXIST;
	if (tca[TCA_KIND] && FUNC7(tca[TCA_KIND], q->ops->id))
		return -EINVAL;
	err = FUNC9(q, tca);
	if (err == 0)
		FUNC15(skb, n, clid, NULL, q);
	return err;

create_n_graft:
	if (!(n->nlmsg_flags&NLM_F_CREATE))
		return -ENOENT;
	if (clid == TC_H_INGRESS)
		q = FUNC10(dev, &dev->rx_queue, p,
				 tcm->tcm_parent, tcm->tcm_parent,
				 tca, &err);
	else {
		struct netdev_queue *dev_queue;

		if (p && p->ops->cl_ops && p->ops->cl_ops->select_queue)
			dev_queue = p->ops->cl_ops->select_queue(p, tcm);
		else if (p)
			dev_queue = p->dev_queue;
		else
			dev_queue = FUNC6(dev, 0);

		q = FUNC10(dev, dev_queue, p,
				 tcm->tcm_parent, tcm->tcm_handle,
				 tca, &err);
	}
	if (q == NULL) {
		if (err == -EAGAIN)
			goto replay;
		return err;
	}

graft:
	err = FUNC12(dev, p, skb, n, clid, q, NULL);
	if (err) {
		if (q)
			FUNC11(q);
		return err;
	}

	return 0;
}