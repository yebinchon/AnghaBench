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
typedef  union afs_dirent {int dummy; } afs_dirent ;
typedef  union afs_dir_block {int dummy; } afs_dir_block ;
struct page {int dummy; } ;
struct key {int dummy; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/  i_ino; } ;
struct afs_dir_page {union afs_dir_block* blocks; } ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 unsigned int PAGE_SIZE ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct page* FUNC5 (struct inode*,unsigned int,struct key*) ; 
 int FUNC6 (unsigned int*,union afs_dir_block*,unsigned int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 struct afs_dir_page* FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *dir, unsigned *fpos, void *cookie,
			   filldir_t filldir, struct key *key)
{
	union afs_dir_block *dblock;
	struct afs_dir_page *dbuf;
	struct page *page;
	unsigned blkoff, limit;
	int ret;

	FUNC3("{%lu},%u,,", dir->i_ino, *fpos);

	if (FUNC9(AFS_VNODE_DELETED, &FUNC0(dir)->flags)) {
		FUNC4(" = -ESTALE");
		return -ESTALE;
	}

	/* round the file position up to the next entry boundary */
	*fpos += sizeof(union afs_dirent) - 1;
	*fpos &= ~(sizeof(union afs_dirent) - 1);

	/* walk through the blocks in sequence */
	ret = 0;
	while (*fpos < dir->i_size) {
		blkoff = *fpos & ~(sizeof(union afs_dir_block) - 1);

		/* fetch the appropriate page from the directory */
		page = FUNC5(dir, blkoff / PAGE_SIZE, key);
		if (FUNC1(page)) {
			ret = FUNC2(page);
			break;
		}

		limit = blkoff & ~(PAGE_SIZE - 1);

		dbuf = FUNC8(page);

		/* deal with the individual blocks stashed on this page */
		do {
			dblock = &dbuf->blocks[(blkoff % PAGE_SIZE) /
					       sizeof(union afs_dir_block)];
			ret = FUNC6(fpos, dblock, blkoff,
						    cookie, filldir);
			if (ret != 1) {
				FUNC7(page);
				goto out;
			}

			blkoff += sizeof(union afs_dir_block);

		} while (*fpos < dir->i_size && blkoff < limit);

		FUNC7(page);
		ret = 0;
	}

out:
	FUNC4(" = %d", ret);
	return ret;
}