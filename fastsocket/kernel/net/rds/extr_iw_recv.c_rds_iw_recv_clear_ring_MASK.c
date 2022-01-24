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
typedef  size_t u32 ;
struct TYPE_4__ {scalar_t__ f_page; } ;
struct TYPE_3__ {size_t w_nr; } ;
struct rds_iw_connection {TYPE_2__ i_frag; int /*<<< orphan*/ * i_recvs; TYPE_1__ i_recv_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_iw_connection*,int /*<<< orphan*/ *) ; 

void FUNC2(struct rds_iw_connection *ic)
{
	u32 i;

	for (i = 0; i < ic->i_recv_ring.w_nr; i++)
		FUNC1(ic, &ic->i_recvs[i]);

	if (ic->i_frag.f_page)
		FUNC0(&ic->i_frag);
}