#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_size; TYPE_3__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ (* filldir_t ) (void*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_9__ {int i_sblock; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_id; } ;
struct TYPE_6__ {struct inode* d_inode; } ;

/* Variables and functions */
 int BFS_BSIZE ; 
 int BFS_BSIZE_BITS ; 
 int BFS_DIRENT_SIZE ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BFS_NAMELEN ; 
 struct bfs_sb_info* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EBADF ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC7 (TYPE_3__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct file *f, void *dirent, filldir_t filldir)
{
	struct inode *dir = f->f_path.dentry->d_inode;
	struct buffer_head *bh;
	struct bfs_dirent *de;
	struct bfs_sb_info *info = FUNC1(dir->i_sb);
	unsigned int offset;
	int block;

	FUNC4(&info->bfs_lock);

	if (f->f_pos & (BFS_DIRENT_SIZE - 1)) {
		FUNC6("Bad f_pos=%08lx for %s:%08lx\n",
					(unsigned long)f->f_pos,
					dir->i_sb->s_id, dir->i_ino);
		FUNC5(&info->bfs_lock);
		return -EBADF;
	}

	while (f->f_pos < dir->i_size) {
		offset = f->f_pos & (BFS_BSIZE - 1);
		block = FUNC0(dir)->i_sblock + (f->f_pos >> BFS_BSIZE_BITS);
		bh = FUNC7(dir->i_sb, block);
		if (!bh) {
			f->f_pos += BFS_BSIZE - offset;
			continue;
		}
		do {
			de = (struct bfs_dirent *)(bh->b_data + offset);
			if (de->ino) {
				int size = FUNC8(de->name, BFS_NAMELEN);
				if (filldir(dirent, de->name, size, f->f_pos,
						FUNC3(de->ino),
						DT_UNKNOWN) < 0) {
					FUNC2(bh);
					FUNC5(&info->bfs_lock);
					return 0;
				}
			}
			offset += BFS_DIRENT_SIZE;
			f->f_pos += BFS_DIRENT_SIZE;
		} while ((offset < BFS_BSIZE) && (f->f_pos < dir->i_size));
		FUNC2(bh);
	}

	FUNC5(&info->bfs_lock);
	return 0;	
}