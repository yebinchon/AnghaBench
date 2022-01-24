#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct signalfd_ctx {int /*<<< orphan*/  sigmask; } ;
struct file {struct signalfd_ctx* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_6__ {TYPE_2__* sighand; TYPE_1__* signal; int /*<<< orphan*/  pending; } ;
struct TYPE_5__ {int /*<<< orphan*/  siglock; int /*<<< orphan*/  signalfd_wqh; } ;
struct TYPE_4__ {int /*<<< orphan*/  shared_pending; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 TYPE_3__* current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, poll_table *wait)
{
	struct signalfd_ctx *ctx = file->private_data;
	unsigned int events = 0;

	FUNC1(file, &current->sighand->signalfd_wqh, wait);

	FUNC2(&current->sighand->siglock);
	if (FUNC0(&current->pending, &ctx->sigmask) ||
	    FUNC0(&current->signal->shared_pending,
			&ctx->sigmask))
		events |= POLLIN;
	FUNC3(&current->sighand->siglock);

	return events;
}