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
struct netdev_queue {struct Qdisc* qdisc; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int TCQ_F_BUILTIN ; 
 int /*<<< orphan*/  __QDISC_STATE_DEACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				 struct netdev_queue *dev_queue,
				 void *_qdisc_default)
{
	struct Qdisc *qdisc_default = _qdisc_default;
	struct Qdisc *qdisc;

	qdisc = dev_queue->qdisc;
	if (qdisc) {
		FUNC4(FUNC0(qdisc));

		if (!(qdisc->flags & TCQ_F_BUILTIN))
			FUNC3(__QDISC_STATE_DEACTIVATED, &qdisc->state);

		FUNC2(dev_queue->qdisc, qdisc_default);
		FUNC1(qdisc);

		FUNC5(FUNC0(qdisc));
	}
}