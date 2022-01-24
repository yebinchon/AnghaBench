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
typedef  void* u32 ;
struct qdisc_size_table {scalar_t__ parent; int flags; int padded; struct qdisc_size_table* stab; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; void* handle; } ;
struct nlattr {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc_ops {int (* init ) (struct qdisc_size_table*,struct nlattr*) ;int /*<<< orphan*/  (* destroy ) (struct qdisc_size_table*) ;int /*<<< orphan*/  owner; } ;
struct Qdisc {scalar_t__ parent; int flags; int padded; struct Qdisc* stab; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; void* handle; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct qdisc_size_table*) ; 
 int FUNC1 (struct qdisc_size_table*) ; 
 size_t TCA_KIND ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 size_t TCA_STAB ; 
 int TCQ_F_INGRESS ; 
 int TCQ_F_MQROOT ; 
 void* TC_H_INGRESS ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,struct nlattr*,int) ; 
 struct qdisc_size_table* FUNC9 (struct netdev_queue*,struct Qdisc_ops*) ; 
 void* FUNC10 (struct net_device*) ; 
 struct qdisc_size_table* FUNC11 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct qdisc_size_table*) ; 
 int /*<<< orphan*/ * FUNC13 (struct qdisc_size_table*) ; 
 struct Qdisc_ops* FUNC14 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC15 (struct qdisc_size_table*) ; 
 int /*<<< orphan*/ * FUNC16 (struct qdisc_size_table*) ; 
 int /*<<< orphan*/  qdisc_rx_lock ; 
 int /*<<< orphan*/  qdisc_tx_lock ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (struct qdisc_size_table*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC21 (struct qdisc_size_table*) ; 

__attribute__((used)) static struct Qdisc *
FUNC22(struct net_device *dev, struct netdev_queue *dev_queue,
	     struct Qdisc *p, u32 parent, u32 handle,
	     struct nlattr **tca, int *errp)
{
	int err;
	struct nlattr *kind = tca[TCA_KIND];
	struct Qdisc *sch;
	struct Qdisc_ops *ops;
	struct qdisc_size_table *stab;

	ops = FUNC14(kind);
#ifdef CONFIG_MODULES
	if (ops == NULL && kind != NULL) {
		char name[IFNAMSIZ];
		if (nla_strlcpy(name, kind, IFNAMSIZ) < IFNAMSIZ) {
			/* We dropped the RTNL semaphore in order to
			 * perform the module load.  So, even if we
			 * succeeded in loading the module we have to
			 * tell the caller to replay the request.  We
			 * indicate this using -EAGAIN.
			 * We replay the request because the device may
			 * go away in the mean time.
			 */
			rtnl_unlock();
			request_module("sch_%s", name);
			rtnl_lock();
			ops = qdisc_lookup_ops(kind);
			if (ops != NULL) {
				/* We will try again qdisc_lookup_ops,
				 * so don't keep a reference.
				 */
				module_put(ops->owner);
				err = -EAGAIN;
				goto err_out;
			}
		}
	}
#endif

	err = -ENOENT;
	if (ops == NULL)
		goto err_out;

	sch = FUNC9(dev_queue, ops);
	if (FUNC0(sch)) {
		err = FUNC1(sch);
		goto err_out2;
	}

	sch->parent = parent;

	if (handle == TC_H_INGRESS) {
		sch->flags |= TCQ_F_INGRESS;
		handle = FUNC2(TC_H_INGRESS, 0);
		FUNC6(FUNC13(sch), &qdisc_rx_lock);
	} else {
		if (handle == 0) {
			handle = FUNC10(dev);
			err = -ENOMEM;
			if (handle == 0)
				goto err_out3;
		}
		FUNC6(FUNC13(sch), &qdisc_tx_lock);
	}

	sch->handle = handle;

	if (!ops->init || (err = ops->init(sch, tca[TCA_OPTIONS])) == 0) {
		if (tca[TCA_STAB]) {
			stab = FUNC11(tca[TCA_STAB]);
			if (FUNC0(stab)) {
				err = FUNC1(stab);
				goto err_out4;
			}
			sch->stab = stab;
		}
		if (tca[TCA_RATE]) {
			spinlock_t *root_lock;

			err = -EOPNOTSUPP;
			if (sch->flags & TCQ_F_MQROOT)
				goto err_out4;

			if ((sch->parent != TC_H_ROOT) &&
			    !(sch->flags & TCQ_F_INGRESS) &&
			    (!p || !(p->flags & TCQ_F_MQROOT)))
				root_lock = FUNC16(sch);
			else
				root_lock = FUNC13(sch);

			err = FUNC4(&sch->bstats, &sch->rate_est,
						root_lock, tca[TCA_RATE]);
			if (err)
				goto err_out4;
		}

		FUNC12(sch);

		return sch;
	}
err_out3:
	FUNC3(dev);
	FUNC5((char *) sch - sch->padded);
err_out2:
	FUNC7(ops->owner);
err_out:
	*errp = err;
	return NULL;

err_out4:
	/*
	 * Any broken qdiscs that would require a ops->reset() here?
	 * The qdisc was never in action so it shouldn't be necessary.
	 */
	FUNC15(sch->stab);
	if (ops->destroy)
		ops->destroy(sch);
	goto err_out3;
}