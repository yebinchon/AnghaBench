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
struct nfs_pageio_descriptor {int /*<<< orphan*/  pg_inode; int /*<<< orphan*/  pg_bsize; int /*<<< orphan*/ * pg_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  rsize; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_pageio_read_ops ; 

void FUNC1(struct nfs_pageio_descriptor *pgio)
{
	pgio->pg_ops = &nfs_pageio_read_ops;
	pgio->pg_bsize = FUNC0(pgio->pg_inode)->rsize;
}