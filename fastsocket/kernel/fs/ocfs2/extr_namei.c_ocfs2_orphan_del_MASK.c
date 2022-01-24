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
struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_ORPHAN_NAMELEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_dinode*,int) ; 
 int FUNC8 (scalar_t__,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_dir_lookup_result*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_dinode*) ; 

int FUNC15(struct ocfs2_super *osb,
		     handle_t *handle,
		     struct inode *orphan_dir_inode,
		     struct inode *inode,
		     struct buffer_head *orphan_dir_bh)
{
	char name[OCFS2_ORPHAN_NAMELEN + 1];
	struct ocfs2_dinode *orphan_fe;
	int status = 0;
	struct ocfs2_dir_lookup_result lookup = { NULL, };

	FUNC4();

	status = FUNC8(FUNC1(inode)->ip_blkno, name);
	if (status < 0) {
		FUNC5(status);
		goto leave;
	}

	FUNC3(0, "removing '%s' from orphan dir %llu (namelen=%d)\n",
	     name, (unsigned long long)FUNC1(orphan_dir_inode)->ip_blkno,
	     OCFS2_ORPHAN_NAMELEN);

	/* find it's spot in the orphan directory */
	status = FUNC10(name, OCFS2_ORPHAN_NAMELEN, orphan_dir_inode,
				  &lookup);
	if (status) {
		FUNC5(status);
		goto leave;
	}

	/* remove it from the orphan directory */
	status = FUNC9(handle, orphan_dir_inode, &lookup);
	if (status < 0) {
		FUNC5(status);
		goto leave;
	}

	status = FUNC12(handle,
					 FUNC0(orphan_dir_inode),
					 orphan_dir_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC5(status);
		goto leave;
	}

	/* do the i_nlink dance! :) */
	orphan_fe = (struct ocfs2_dinode *) orphan_dir_bh->b_data;
	if (FUNC2(inode->i_mode))
		FUNC7(orphan_fe, -1);
	orphan_dir_inode->i_nlink = FUNC14(orphan_fe);

	status = FUNC13(handle, orphan_dir_bh);
	if (status < 0) {
		FUNC5(status);
		goto leave;
	}

leave:
	FUNC11(&lookup);

	FUNC6(status);
	return status;
}