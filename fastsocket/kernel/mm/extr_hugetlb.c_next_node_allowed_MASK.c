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
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int MAX_NUMNODES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int nid, nodemask_t *nodes_allowed)
{
	nid = FUNC2(nid, *nodes_allowed);
	if (nid == MAX_NUMNODES)
		nid = FUNC1(*nodes_allowed);
	FUNC0(nid >= MAX_NUMNODES);

	return nid;
}