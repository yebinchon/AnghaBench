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
struct pglist_data {int /*<<< orphan*/  node_id; } ;

/* Variables and functions */
 int MAX_NUMNODES ; 
 struct pglist_data* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

struct pglist_data *FUNC2(struct pglist_data *pgdat)
{
	int nid = FUNC1(pgdat->node_id);

	if (nid == MAX_NUMNODES)
		return NULL;
	return FUNC0(nid);
}