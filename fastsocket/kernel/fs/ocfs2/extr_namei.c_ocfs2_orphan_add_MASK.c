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
struct ocfs2_super {int /*<<< orphan*/  slot_num; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_orphaned_slot; int /*<<< orphan*/  i_flags; } ;
struct inode {int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_ORPHANED_FL ; 
 int /*<<< orphan*/  OCFS2_ORPHAN_NAMELEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,char*,int /*<<< orphan*/ ,struct inode*,scalar_t__,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_dinode*,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC14 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_dinode*) ; 

__attribute__((used)) static int FUNC16(struct ocfs2_super *osb,
			    handle_t *handle,
			    struct inode *inode,
			    struct ocfs2_dinode *fe,
			    char *name,
			    struct ocfs2_dir_lookup_result *lookup,
			    struct inode *orphan_dir_inode)
{
	struct buffer_head *orphan_dir_bh = NULL;
	int status = 0;
	struct ocfs2_dinode *orphan_fe;

	FUNC8("(inode->i_ino = %lu)\n", inode->i_ino);

	status = FUNC14(orphan_dir_inode, &orphan_dir_bh);
	if (status < 0) {
		FUNC9(status);
		goto leave;
	}

	status = FUNC12(handle,
					 FUNC0(orphan_dir_inode),
					 orphan_dir_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC9(status);
		goto leave;
	}

	/* we're a cluster, and nlink can change on disk from
	 * underneath us... */
	orphan_fe = (struct ocfs2_dinode *) orphan_dir_bh->b_data;
	if (FUNC2(inode->i_mode))
		FUNC11(orphan_fe, 1);
	orphan_dir_inode->i_nlink = FUNC15(orphan_fe);

	status = FUNC13(handle, orphan_dir_bh);
	if (status < 0) {
		FUNC9(status);
		goto leave;
	}

	status = FUNC3(handle, orphan_dir_inode, name,
				   OCFS2_ORPHAN_NAMELEN, inode,
				   FUNC1(inode)->ip_blkno,
				   orphan_dir_bh, lookup);
	if (status < 0) {
		FUNC9(status);
		goto leave;
	}

	FUNC6(&fe->i_flags, OCFS2_ORPHANED_FL);

	/* Record which orphan dir our inode now resides
	 * in. delete_inode will use this to determine which orphan
	 * dir to lock. */
	fe->i_orphaned_slot = FUNC5(osb->slot_num);

	FUNC7(0, "Inode %llu orphaned in slot %d\n",
	     (unsigned long long)FUNC1(inode)->ip_blkno, osb->slot_num);

leave:
	FUNC4(orphan_dir_bh);

	FUNC10(status);
	return status;
}