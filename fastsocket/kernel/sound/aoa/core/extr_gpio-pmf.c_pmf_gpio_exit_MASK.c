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
struct TYPE_6__ {scalar_t__ gpio_private; int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct TYPE_5__ {scalar_t__ gpio_private; int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct TYPE_4__ {scalar_t__ gpio_private; int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct gpio_runtime {TYPE_3__ line_out_notify; TYPE_2__ line_in_notify; TYPE_1__ headphone_notify; scalar_t__ implementation_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_runtime*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct gpio_runtime *rt)
{
	FUNC4(rt);
	rt->implementation_private = 0;

	if (rt->headphone_notify.gpio_private)
		FUNC5(rt->headphone_notify.gpio_private);
	if (rt->line_in_notify.gpio_private)
		FUNC5(rt->line_in_notify.gpio_private);
	if (rt->line_out_notify.gpio_private)
		FUNC5(rt->line_out_notify.gpio_private);

	/* make sure no work is pending before freeing
	 * all things */
	FUNC0(&rt->headphone_notify.work);
	FUNC0(&rt->line_in_notify.work);
	FUNC0(&rt->line_out_notify.work);
	FUNC1();

	FUNC3(&rt->headphone_notify.mutex);
	FUNC3(&rt->line_in_notify.mutex);
	FUNC3(&rt->line_out_notify.mutex);

	if (rt->headphone_notify.gpio_private)
		FUNC2(rt->headphone_notify.gpio_private);
	if (rt->line_in_notify.gpio_private)
		FUNC2(rt->line_in_notify.gpio_private);
	if (rt->line_out_notify.gpio_private)
		FUNC2(rt->line_out_notify.gpio_private);
}