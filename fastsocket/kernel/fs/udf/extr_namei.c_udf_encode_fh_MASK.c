#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kernel_lb_addr {scalar_t__ partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct inode {int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent_generation; scalar_t__ parent_partref; int /*<<< orphan*/  parent_block; int /*<<< orphan*/  generation; scalar_t__ partref; int /*<<< orphan*/  block; } ;
struct fid {TYPE_2__ udf; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_6__ {struct kernel_lb_addr i_location; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int FILEID_UDF_WITHOUT_PARENT ; 
 int FILEID_UDF_WITH_PARENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dentry *de, __u32 *fh, int *lenp,
			 int connectable)
{
	int len = *lenp;
	struct inode *inode =  de->d_inode;
	struct kernel_lb_addr location = FUNC1(inode)->i_location;
	struct fid *fid = (struct fid *)fh;
	int type = FILEID_UDF_WITHOUT_PARENT;

	if (len < 3 || (connectable && len < 5))
		return 255;

	*lenp = 3;
	fid->udf.block = location.logicalBlockNum;
	fid->udf.partref = location.partitionReferenceNum;
	fid->udf.parent_partref = 0;
	fid->udf.generation = inode->i_generation;

	if (connectable && !FUNC0(inode->i_mode)) {
		FUNC2(&de->d_lock);
		inode = de->d_parent->d_inode;
		location = FUNC1(inode)->i_location;
		fid->udf.parent_block = location.logicalBlockNum;
		fid->udf.parent_partref = location.partitionReferenceNum;
		fid->udf.parent_generation = inode->i_generation;
		FUNC3(&de->d_lock);
		*lenp = 5;
		type = FILEID_UDF_WITH_PARENT;
	}

	return type;
}