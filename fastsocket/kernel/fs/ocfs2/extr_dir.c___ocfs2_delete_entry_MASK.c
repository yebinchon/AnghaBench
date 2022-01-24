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
struct ocfs2_dir_entry {int /*<<< orphan*/  rec_len; scalar_t__ inode; } ;
struct inode {int /*<<< orphan*/  i_version; } ;
struct buffer_head {int dummy; } ;
typedef  int (* ocfs2_journal_access_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,struct inode*,struct ocfs2_dir_entry*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(handle_t *handle, struct inode *dir,
				struct ocfs2_dir_entry *de_del,
				struct buffer_head *bh, char *first_de,
				unsigned int bytes)
{
	struct ocfs2_dir_entry *de, *pde;
	int i, status = -ENOENT;
	ocfs2_journal_access_func access = ocfs2_journal_access_db;

	FUNC4("(0x%p, 0x%p, 0x%p, 0x%p)\n", handle, dir, de_del, bh);

	if (FUNC1(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		access = ocfs2_journal_access_di;

	i = 0;
	pde = NULL;
	de = (struct ocfs2_dir_entry *) first_de;
	while (i < bytes) {
		if (!FUNC7(dir, de, bh, i)) {
			status = -EIO;
			FUNC5(status);
			goto bail;
		}
		if (de == de_del)  {
			status = access(handle, FUNC0(dir), bh,
					OCFS2_JOURNAL_ACCESS_WRITE);
			if (status < 0) {
				status = -EIO;
				FUNC5(status);
				goto bail;
			}
			if (pde)
				FUNC2(&pde->rec_len,
						FUNC3(de->rec_len));
			else
				de->inode = 0;
			dir->i_version++;
			status = FUNC10(handle, bh);
			goto bail;
		}
		i += FUNC3(de->rec_len);
		pde = de;
		de = (struct ocfs2_dir_entry *)((char *)de + FUNC3(de->rec_len));
	}
bail:
	FUNC6(status);
	return status;
}