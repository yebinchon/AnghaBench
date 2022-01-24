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
struct super_block {int dummy; } ;
struct quota_info {int /*<<< orphan*/  dqio_mutex; TYPE_1__** ops; } ;
struct TYPE_2__ {int (* write_file_info ) (struct super_block*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct quota_info* FUNC2 (struct super_block*) ; 
 int FUNC3 (struct super_block*,int) ; 

int FUNC4(struct super_block *sb, int type)
{
	int ret;
	struct quota_info *dqopt = FUNC2(sb);

	FUNC0(&dqopt->dqio_mutex);
	ret = dqopt->ops[type]->write_file_info(sb, type);
	FUNC1(&dqopt->dqio_mutex);
	return ret;
}