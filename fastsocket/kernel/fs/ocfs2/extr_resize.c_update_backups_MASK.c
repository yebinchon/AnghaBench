#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_blkno; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int OCFS2_MAX_BACKUP_SUPERBLOCKS ; 
 struct ocfs2_super* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int FUNC8 (struct ocfs2_super*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC9(struct inode * inode, u32 clusters, char *data)
{
	int i, ret = 0;
	u32 cluster;
	u64 blkno;
	struct buffer_head *backup = NULL;
	struct ocfs2_dinode *backup_di = NULL;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);

	/* calculate the real backups we need to update. */
	for (i = 0; i < OCFS2_MAX_BACKUP_SUPERBLOCKS; i++) {
		blkno = FUNC5(inode->i_sb, i);
		cluster = FUNC6(inode->i_sb, blkno);
		if (cluster > clusters)
			break;

		ret = FUNC7(osb, blkno, 1, &backup);
		if (ret < 0) {
			FUNC4(ret);
			break;
		}

		FUNC3(backup->b_data, data, inode->i_sb->s_blocksize);

		backup_di = (struct ocfs2_dinode *)backup->b_data;
		backup_di->i_blkno = FUNC2(blkno);

		ret = FUNC8(osb, backup);
		FUNC1(backup);
		backup = NULL;
		if (ret < 0) {
			FUNC4(ret);
			break;
		}
	}

	return ret;
}