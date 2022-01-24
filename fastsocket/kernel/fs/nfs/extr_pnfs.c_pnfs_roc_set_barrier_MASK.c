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
typedef  scalar_t__ u32 ;
struct pnfs_layout_hdr {scalar_t__ plh_barrier; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {struct pnfs_layout_hdr* layout; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct inode *ino, u32 barrier)
{
	struct pnfs_layout_hdr *lo;

	FUNC1(&ino->i_lock);
	lo = FUNC0(ino)->layout;
	if ((int)(barrier - lo->plh_barrier) > 0)
		lo->plh_barrier = barrier;
	FUNC2(&ino->i_lock);
}