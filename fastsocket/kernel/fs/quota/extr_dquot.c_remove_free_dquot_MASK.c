#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dquot {int /*<<< orphan*/  dq_free; } ;
struct TYPE_2__ {int /*<<< orphan*/  free_dquots; } ;

/* Variables and functions */
 TYPE_1__ dqstats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct dquot *dquot)
{
	if (FUNC1(&dquot->dq_free))
		return;
	FUNC0(&dquot->dq_free);
	dqstats.free_dquots--;
}