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
struct rds_sock {scalar_t__ rs_bound_addr; int /*<<< orphan*/  rs_bound_node; int /*<<< orphan*/  rs_bound_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_bind_lock ; 
 int /*<<< orphan*/  FUNC2 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rds_sock*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct rds_sock *rs)
{
	unsigned long flags;

	FUNC4(&rds_bind_lock, flags);

	if (rs->rs_bound_addr) {
		FUNC3("rs %p unbinding from %pI4:%d\n",
		  rs, &rs->rs_bound_addr,
		  FUNC1(rs->rs_bound_port));

		FUNC0(&rs->rs_bound_node);
		FUNC2(rs);
		rs->rs_bound_addr = 0;
	}

	FUNC5(&rds_bind_lock, flags);
}