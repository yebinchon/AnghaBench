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
typedef  int /*<<< orphan*/  vhost_work_fn_t ;
struct vhost_work {scalar_t__ done_seq; scalar_t__ queue_seq; scalar_t__ flushing; int /*<<< orphan*/  done; int /*<<< orphan*/  fn; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vhost_work *work, vhost_work_fn_t fn)
{
	FUNC0(&work->node);
	work->fn = fn;
	FUNC1(&work->done);
	work->flushing = 0;
	work->queue_seq = work->done_seq = 0;
}