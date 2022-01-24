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
struct super_block {int dummy; } ;
struct ocfs2_local_disk_dqinfo {int /*<<< orphan*/  dqi_chunks; } ;
struct ocfs2_local_disk_chunk {int /*<<< orphan*/  dqc_free; } ;
struct list_head {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct super_block*,struct ocfs2_local_disk_chunk*,int,struct list_head*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC8(struct inode *lqinode,
				     struct ocfs2_local_disk_dqinfo *ldinfo,
				     int type,
				     struct list_head *head)
{
	struct super_block *sb = lqinode->i_sb;
	struct buffer_head *hbh;
	struct ocfs2_local_disk_chunk *dchunk;
	int i, chunks = FUNC2(ldinfo->dqi_chunks);
	int status = 0;

	for (i = 0; i < chunks; i++) {
		hbh = NULL;
		status = FUNC5(lqinode,
						FUNC7(sb, i),
						&hbh);
		if (status) {
			FUNC3(status);
			break;
		}
		dchunk = (struct ocfs2_local_disk_chunk *)hbh->b_data;
		if (FUNC2(dchunk->dqc_free) < FUNC6(sb))
			status = FUNC4(sb, dchunk, i, head);
		FUNC0(hbh);
		if (status < 0)
			break;
	}
	if (status < 0)
		FUNC1(head);
	return status;
}