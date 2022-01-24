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
struct rds_page_frag {scalar_t__ f_mapped; int /*<<< orphan*/  f_page; } ;
struct rds_iw_recv_work {struct rds_page_frag* r_frag; } ;
struct rds_iw_connection {TYPE_1__* i_cm_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  RDS_FRAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rds_iw_recv_work*,struct rds_page_frag*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rds_iw_connection *ic,
				   struct rds_iw_recv_work *recv)
{
	struct rds_page_frag *frag = recv->r_frag;

	FUNC1("recv %p frag %p page %p\n", recv, frag, frag->f_page);
	if (frag->f_mapped)
		FUNC0(ic->i_cm_id->device,
			       frag->f_mapped,
			       RDS_FRAG_SIZE, DMA_FROM_DEVICE);
	frag->f_mapped = 0;
}