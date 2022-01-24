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
struct rds_iw_mr_pool {int dummy; } ;
struct rds_iw_mr {scalar_t__ mr; scalar_t__ page_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct rds_iw_mr_pool *pool,
		struct rds_iw_mr *ibmr)
{
	if (ibmr->page_list)
		FUNC1(ibmr->page_list);
	if (ibmr->mr)
		FUNC0(ibmr->mr);
}