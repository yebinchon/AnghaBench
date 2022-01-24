#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct gnet_stats_rate_est {int bps; int pps; } ;
struct gnet_stats_basic_packed {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct gnet_estimator {int interval; int /*<<< orphan*/  ewma_log; } ;
struct gen_estimator {int avbps; int avpps; int /*<<< orphan*/  list; int /*<<< orphan*/  last_packets; int /*<<< orphan*/  last_bytes; int /*<<< orphan*/  ewma_log; int /*<<< orphan*/ * stats_lock; struct gnet_stats_rate_est* rate_est; struct gnet_stats_basic_packed* bstats; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; TYPE_1__ timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* elist ; 
 int /*<<< orphan*/  est_timer ; 
 int /*<<< orphan*/  FUNC1 (struct gen_estimator*) ; 
 scalar_t__ jiffies ; 
 struct gen_estimator* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 struct gnet_estimator* FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct gnet_stats_basic_packed *bstats,
		      struct gnet_stats_rate_est *rate_est,
		      spinlock_t *stats_lock,
		      struct nlattr *opt)
{
	struct gen_estimator *est;
	struct gnet_estimator *parm = FUNC6(opt);
	int idx;

	if (FUNC7(opt) < sizeof(*parm))
		return -EINVAL;

	if (parm->interval < -2 || parm->interval > 3)
		return -EINVAL;

	est = FUNC2(sizeof(*est), GFP_KERNEL);
	if (est == NULL)
		return -ENOBUFS;

	idx = parm->interval + 2;
	est->bstats = bstats;
	est->rate_est = rate_est;
	est->stats_lock = stats_lock;
	est->ewma_log = parm->ewma_log;
	est->last_bytes = bstats->bytes;
	est->avbps = rate_est->bps<<5;
	est->last_packets = bstats->packets;
	est->avpps = rate_est->pps<<10;

	if (!elist[idx].timer.function) {
		FUNC0(&elist[idx].list);
		FUNC8(&elist[idx].timer, est_timer, idx);
	}

	if (FUNC4(&elist[idx].list))
		FUNC5(&elist[idx].timer, jiffies + ((HZ/4) << idx));

	FUNC3(&est->list, &elist[idx].list);
	FUNC1(est);

	return 0;
}