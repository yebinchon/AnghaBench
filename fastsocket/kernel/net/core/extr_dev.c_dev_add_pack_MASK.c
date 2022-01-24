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
struct packet_type {scalar_t__ type; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_ALL ; 
 int PTYPE_HASH_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ptype_all ; 
 int /*<<< orphan*/ * ptype_base ; 
 int /*<<< orphan*/  ptype_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct packet_type *pt)
{
	int hash;

	FUNC3(&ptype_lock);
	if (pt->type == FUNC0(ETH_P_ALL))
		FUNC1(&pt->list, &ptype_all);
	else {
		hash = FUNC2(pt->type) & PTYPE_HASH_MASK;
		FUNC1(&pt->list, &ptype_base[hash]);
	}
	FUNC4(&ptype_lock);
}