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
typedef  int /*<<< orphan*/  u16 ;
struct inode {int i_size; void* i_mtime; void* i_ctime; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_dirent {unsigned char* name; scalar_t__ ino; } ;
struct TYPE_2__ {int i_sblock; int i_eblock; } ;

/* Variables and functions */
 int BFS_BSIZE ; 
 scalar_t__ BFS_DIRENT_SIZE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BFS_NAMELEN ; 
 void* CURRENT_TIME_SEC ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, const unsigned char *name,
							int namelen, int ino)
{
	struct buffer_head *bh;
	struct bfs_dirent *de;
	int block, sblock, eblock, off, pos;
	int i;

	FUNC3("name=%s, namelen=%d\n", name, namelen);

	if (!namelen)
		return -ENOENT;
	if (namelen > BFS_NAMELEN)
		return -ENAMETOOLONG;

	sblock = FUNC0(dir)->i_sblock;
	eblock = FUNC0(dir)->i_eblock;
	for (block = sblock; block <= eblock; block++) {
		bh = FUNC6(dir->i_sb, block);
		if (!bh)
			return -ENOSPC;
		for (off = 0; off < BFS_BSIZE; off += BFS_DIRENT_SIZE) {
			de = (struct bfs_dirent *)(bh->b_data + off);
			if (!de->ino) {
				pos = (block - sblock) * BFS_BSIZE + off;
				if (pos >= dir->i_size) {
					dir->i_size += BFS_DIRENT_SIZE;
					dir->i_ctime = CURRENT_TIME_SEC;
				}
				dir->i_mtime = CURRENT_TIME_SEC;
				FUNC5(dir);
				de->ino = FUNC2((u16)ino);
				for (i = 0; i < BFS_NAMELEN; i++)
					de->name[i] =
						(i < namelen) ? name[i] : 0;
				FUNC4(bh, dir);
				FUNC1(bh);
				return 0;
			}
		}
		FUNC1(bh);
	}
	return -ENOSPC;
}