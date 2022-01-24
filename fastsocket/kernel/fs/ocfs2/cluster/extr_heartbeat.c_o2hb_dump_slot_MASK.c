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
struct o2hb_disk_heartbeat_block {int /*<<< orphan*/  hb_generation; int /*<<< orphan*/  hb_cksum; int /*<<< orphan*/  hb_node; int /*<<< orphan*/  hb_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long) ; 

__attribute__((used)) static void FUNC3(struct o2hb_disk_heartbeat_block *hb_block)
{
	FUNC2(ML_ERROR, "Dump slot information: seq = 0x%llx, node = %u, "
	     "cksum = 0x%x, generation 0x%llx\n",
	     (long long)FUNC1(hb_block->hb_seq),
	     hb_block->hb_node, FUNC0(hb_block->hb_cksum),
	     (long long)FUNC1(hb_block->hb_generation));
}