#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct nfs_pageio_descriptor {int pg_error; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_4__ {unsigned long flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* write_pageio_init ) (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_VFSWRITEPAGES ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_FLUSHING ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  nfs_async_write_completion_ops ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  nfs_wait_bit_killable ; 
 int /*<<< orphan*/  nfs_writepages_callback ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct writeback_control*) ; 
 int FUNC10 (struct address_space*,struct writeback_control*,int /*<<< orphan*/ ,struct nfs_pageio_descriptor*) ; 

int FUNC11(struct address_space *mapping, struct writeback_control *wbc)
{
	struct inode *inode = mapping->host;
	unsigned long *bitlock = &FUNC0(inode)->flags;
	struct nfs_pageio_descriptor pgio;
	int err;

	/* Stop dirtying of new pages while we sync */
	err = FUNC7(bitlock, NFS_INO_FLUSHING,
			nfs_wait_bit_killable, TASK_KILLABLE);
	if (err)
		goto out_err;

	FUNC3(inode, NFSIOS_VFSWRITEPAGES);

	FUNC1(inode)->write_pageio_init(&pgio, inode, FUNC9(wbc), &nfs_async_write_completion_ops);
	err = FUNC10(mapping, wbc, nfs_writepages_callback, &pgio);
	FUNC4(&pgio);

	FUNC2(NFS_INO_FLUSHING, bitlock);
	FUNC5();
	FUNC8(bitlock, NFS_INO_FLUSHING);

	if (err < 0)
		goto out_err;
	err = pgio.pg_error;
	if (err < 0)
		goto out_err;
	return 0;
out_err:
	return err;
}