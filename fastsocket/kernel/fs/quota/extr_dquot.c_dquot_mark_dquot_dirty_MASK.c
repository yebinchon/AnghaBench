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
struct dquot {size_t dq_type; int /*<<< orphan*/  dq_sb; int /*<<< orphan*/  dq_dirty; int /*<<< orphan*/  dq_flags; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int /*<<< orphan*/  dqi_dirty_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_MOD_B ; 
 int /*<<< orphan*/  dq_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct dquot *dquot)
{
	FUNC2(&dq_list_lock);
	if (!FUNC4(DQ_MOD_B, &dquot->dq_flags))
		FUNC0(&dquot->dq_dirty, &FUNC1(dquot->dq_sb)->
				info[dquot->dq_type].dqi_dirty_list);
	FUNC3(&dq_list_lock);
	return 0;
}