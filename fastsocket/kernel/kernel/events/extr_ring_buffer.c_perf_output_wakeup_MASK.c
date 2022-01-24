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
struct perf_output_handle {TYPE_2__* event; TYPE_1__* rb; } ;
struct TYPE_4__ {int pending_wakeup; int /*<<< orphan*/  pending; } ;
struct TYPE_3__ {int /*<<< orphan*/  poll; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct perf_output_handle *handle)
{
	FUNC0(&handle->rb->poll, POLL_IN);

	handle->event->pending_wakeup = 1;
	FUNC1(&handle->event->pending);
}