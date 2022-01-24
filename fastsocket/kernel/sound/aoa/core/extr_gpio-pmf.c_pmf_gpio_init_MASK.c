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
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct gpio_runtime {TYPE_1__ line_out_notify; TYPE_3__ line_in_notify; TYPE_2__ headphone_notify; scalar_t__ implementation_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_runtime*) ; 
 int /*<<< orphan*/  pmf_handle_notify ; 

__attribute__((used)) static void FUNC3(struct gpio_runtime *rt)
{
	FUNC2(rt);
	rt->implementation_private = 0;
	FUNC0(&rt->headphone_notify.work, pmf_handle_notify);
	FUNC0(&rt->line_in_notify.work, pmf_handle_notify);
	FUNC0(&rt->line_out_notify.work, pmf_handle_notify);
	FUNC1(&rt->headphone_notify.mutex);
	FUNC1(&rt->line_in_notify.mutex);
	FUNC1(&rt->line_out_notify.mutex);
}