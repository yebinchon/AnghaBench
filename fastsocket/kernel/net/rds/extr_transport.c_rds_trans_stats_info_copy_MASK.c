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
struct rds_transport {unsigned int (* stats_info_copy ) (struct rds_info_iterator*,unsigned int) ;} ;
struct rds_info_iterator {int dummy; } ;

/* Variables and functions */
 int RDS_TRANS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_info_iterator*) ; 
 int /*<<< orphan*/  rds_trans_sem ; 
 unsigned int FUNC3 (struct rds_info_iterator*,unsigned int) ; 
 struct rds_transport** transports ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

unsigned int FUNC5(struct rds_info_iterator *iter,
				       unsigned int avail)

{
	struct rds_transport *trans;
	unsigned int total = 0;
	unsigned int part;
	int i;

	FUNC2(iter);
	FUNC0(&rds_trans_sem);

	for (i = 0; i < RDS_TRANS_COUNT; i++)
	{
		trans = transports[i];
		if (!trans || !trans->stats_info_copy)
			continue;

		part = trans->stats_info_copy(iter, avail);
		avail -= FUNC1(avail, part);
		total += part;
	}

	FUNC4(&rds_trans_sem);

	return total;
}