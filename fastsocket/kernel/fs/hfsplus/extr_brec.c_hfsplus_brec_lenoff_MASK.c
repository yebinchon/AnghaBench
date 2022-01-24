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
typedef  int u16 ;
struct hfs_bnode {TYPE_1__* tree; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int node_size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfs_bnode*,int /*<<< orphan*/ *,int,int) ; 

u16 FUNC2(struct hfs_bnode *node, u16 rec, u16 *off)
{
	__be16 retval[2];
	u16 dataoff;

	dataoff = node->tree->node_size - (rec + 2) * 2;
	FUNC1(node, retval, dataoff, 4);
	*off = FUNC0(retval[1]);
	return FUNC0(retval[0]) - *off;
}