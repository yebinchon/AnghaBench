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
struct rds_incoming {TYPE_2__* i_conn; int /*<<< orphan*/  i_item; int /*<<< orphan*/  i_refcount; } ;
struct TYPE_4__ {TYPE_1__* c_trans; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* inc_free ) (struct rds_incoming*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct rds_incoming*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_incoming*) ; 

void FUNC6(struct rds_incoming *inc)
{
	FUNC4("put inc %p ref %d\n", inc, FUNC2(&inc->i_refcount));
	if (FUNC1(&inc->i_refcount)) {
		FUNC0(!FUNC3(&inc->i_item));

		inc->i_conn->c_trans->inc_free(inc);
	}
}