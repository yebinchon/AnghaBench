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
struct rds_transport {scalar_t__ (* laddr_check ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  t_owner; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int RDS_TRANS_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rds_transport rds_loop_transport ; 
 int /*<<< orphan*/  rds_trans_sem ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct rds_transport** transports ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct rds_transport *FUNC6(__be32 addr)
{
	struct rds_transport *ret = NULL;
	struct rds_transport *trans;
	unsigned int i;

	if (FUNC0(FUNC2(addr)))
		return &rds_loop_transport;

	FUNC1(&rds_trans_sem);
	for (i = 0; i < RDS_TRANS_COUNT; i++) {
		trans = transports[i];

		if (trans && (trans->laddr_check(addr) == 0) &&
		    (!trans->t_owner || FUNC4(trans->t_owner))) {
			ret = trans;
			break;
		}
	}
	FUNC5(&rds_trans_sem);

	return ret;
}