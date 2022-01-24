#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime_nsec; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime_nsec; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_clusters; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_dyn_features; int /*<<< orphan*/  i_attr; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; scalar_t__ i_blocks; void* i_mode; scalar_t__ i_gid; scalar_t__ i_uid; int /*<<< orphan*/  i_nlink; } ;
struct TYPE_8__ {int /*<<< orphan*/  ip_lock; void* ip_dyn_features; scalar_t__ ip_attr; scalar_t__ ip_clusters; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct inode *inode,
			 struct ocfs2_dinode *fe)
{
	FUNC9(&FUNC0(inode)->ip_lock);

	FUNC0(inode)->ip_clusters = FUNC4(fe->i_clusters);
	FUNC0(inode)->ip_attr = FUNC4(fe->i_attr);
	FUNC0(inode)->ip_dyn_features = FUNC3(fe->i_dyn_features);
	FUNC8(inode);
	FUNC2(inode, FUNC5(fe->i_size));
	inode->i_nlink = FUNC7(fe);
	inode->i_uid = FUNC4(fe->i_uid);
	inode->i_gid = FUNC4(fe->i_gid);
	inode->i_mode = FUNC3(fe->i_mode);
	if (FUNC1(inode->i_mode) && FUNC4(fe->i_clusters) == 0)
		inode->i_blocks = 0;
	else
		inode->i_blocks = FUNC6(inode);
	inode->i_atime.tv_sec = FUNC5(fe->i_atime);
	inode->i_atime.tv_nsec = FUNC4(fe->i_atime_nsec);
	inode->i_mtime.tv_sec = FUNC5(fe->i_mtime);
	inode->i_mtime.tv_nsec = FUNC4(fe->i_mtime_nsec);
	inode->i_ctime.tv_sec = FUNC5(fe->i_ctime);
	inode->i_ctime.tv_nsec = FUNC4(fe->i_ctime_nsec);

	FUNC10(&FUNC0(inode)->ip_lock);
}