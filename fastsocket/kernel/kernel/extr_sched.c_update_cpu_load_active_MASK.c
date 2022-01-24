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
struct rq {int /*<<< orphan*/  calc_load_update; } ;

/* Variables and functions */
 scalar_t__ LOAD_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct rq*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 

__attribute__((used)) static void FUNC3(struct rq *this_rq)
{
	FUNC2(this_rq);

	if (FUNC1(jiffies, this_rq->calc_load_update)) {
		this_rq->calc_load_update += LOAD_FREQ;
		FUNC0(this_rq);
	}
}