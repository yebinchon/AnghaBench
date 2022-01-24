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
struct flow_filter {scalar_t__ perturb_period; int /*<<< orphan*/  perturb_timer; int /*<<< orphan*/  hashrnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned long arg)
{
	struct flow_filter *f = (struct flow_filter *)arg;

	FUNC0(&f->hashrnd, 4);
	if (f->perturb_period)
		FUNC1(&f->perturb_timer, jiffies + f->perturb_period);
}