#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rds_iw_recv_work {TYPE_2__* r_frag; TYPE_1__* r_iwinc; } ;
struct rds_iw_connection {int dummy; } ;
struct TYPE_5__ {scalar_t__ f_page; } ;
struct TYPE_4__ {int /*<<< orphan*/  ii_inc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_iw_connection*,struct rds_iw_recv_work*) ; 

__attribute__((used)) static void FUNC4(struct rds_iw_connection *ic,
				  struct rds_iw_recv_work *recv)
{
	if (recv->r_iwinc) {
		FUNC0(&recv->r_iwinc->ii_inc);
		recv->r_iwinc = NULL;
	}
	if (recv->r_frag) {
		FUNC3(ic, recv);
		if (recv->r_frag->f_page)
			FUNC1(recv->r_frag);
		FUNC2(recv->r_frag);
		recv->r_frag = NULL;
	}
}