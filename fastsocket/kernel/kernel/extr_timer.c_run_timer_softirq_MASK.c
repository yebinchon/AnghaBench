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
struct tvec_base {int /*<<< orphan*/  timer_jiffies; } ;
struct softirq_action {int dummy; } ;

/* Variables and functions */
 struct tvec_base* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tvec_base*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tvec_bases ; 

__attribute__((used)) static void FUNC4(struct softirq_action *h)
{
	struct tvec_base *base = FUNC0(tvec_bases);

	FUNC2();

	if (FUNC3(jiffies, base->timer_jiffies))
		FUNC1(base);
}