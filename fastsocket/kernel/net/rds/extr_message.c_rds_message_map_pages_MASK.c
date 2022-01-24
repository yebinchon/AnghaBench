#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_6__ {unsigned int op_nents; int /*<<< orphan*/ * op_sg; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_len; } ;
struct TYPE_5__ {TYPE_1__ i_hdr; } ;
struct rds_message {TYPE_3__ data; TYPE_2__ m_inc; int /*<<< orphan*/  m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rds_message* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RDS_MSG_PAGEVEC ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct rds_message* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct rds_message*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 

struct rds_message *FUNC9(unsigned long *page_addrs, unsigned int total_len)
{
	struct rds_message *rm;
	unsigned int i;
	int num_sgs = FUNC1(total_len, PAGE_SIZE);
	int extra_bytes = num_sgs * sizeof(struct scatterlist);

	rm = FUNC3(extra_bytes, GFP_NOWAIT);
	if (!rm)
		return FUNC0(-ENOMEM);

	FUNC6(RDS_MSG_PAGEVEC, &rm->m_flags);
	rm->m_inc.i_hdr.h_len = FUNC2(total_len);
	rm->data.op_nents = FUNC1(total_len, PAGE_SIZE);
	rm->data.op_sg = FUNC4(rm, num_sgs);
	if (!rm->data.op_sg) {
		FUNC5(rm);
		return FUNC0(-ENOMEM);
	}

	for (i = 0; i < rm->data.op_nents; ++i) {
		FUNC7(&rm->data.op_sg[i],
				FUNC8(page_addrs[i]),
				PAGE_SIZE, 0);
	}

	return rm;
}