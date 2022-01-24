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
struct hstate {int /*<<< orphan*/  next_nid_to_alloc; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hstate *h,
					nodemask_t *nodes_allowed)
{
	int nid;

	FUNC0(!nodes_allowed);

	nid = FUNC1(h->next_nid_to_alloc, nodes_allowed);
	h->next_nid_to_alloc = FUNC2(nid, nodes_allowed);

	return nid;
}