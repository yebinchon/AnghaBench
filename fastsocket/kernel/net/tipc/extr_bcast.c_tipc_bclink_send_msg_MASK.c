#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ max_queue_sz; int /*<<< orphan*/  accu_queue_sz; int /*<<< orphan*/  queue_sz_counts; int /*<<< orphan*/  sent_info; } ;
struct TYPE_5__ {scalar_t__ out_queue_size; TYPE_1__ stats; } ;

/* Variables and functions */
 int ELINKCONG ; 
 int /*<<< orphan*/  bc_lock ; 
 TYPE_2__* bcl ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct sk_buff *buf)
{
	int res;

	FUNC1(&bc_lock);

	res = FUNC3(bcl, buf);
	if (FUNC4(res == -ELINKCONG))
		FUNC0(buf);
	else
		bcl->stats.sent_info++;

	if (bcl->out_queue_size > bcl->stats.max_queue_sz)
		bcl->stats.max_queue_sz = bcl->out_queue_size;
	bcl->stats.queue_sz_counts++;
	bcl->stats.accu_queue_sz += bcl->out_queue_size;

	FUNC2(&bc_lock);
	return res;
}