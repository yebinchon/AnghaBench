#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysv_dir_entry {char* name; int /*<<< orphan*/  inode; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {unsigned long i_size; struct super_block* i_sb; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {unsigned long f_pos; TYPE_2__ f_path; } ;
typedef  unsigned long loff_t ;
typedef  int (* filldir_t ) (void*,char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 scalar_t__ FUNC0 (struct page*) ; 
 unsigned long PAGE_CACHE_MASK ; 
 unsigned long PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 unsigned long SYSV_DIRSIZE ; 
 int /*<<< orphan*/  SYSV_NAMELEN ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct page* FUNC2 (struct inode*,unsigned long) ; 
 unsigned long FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct file * filp, void * dirent, filldir_t filldir)
{
	unsigned long pos = filp->f_pos;
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct super_block *sb = inode->i_sb;
	unsigned offset = pos & ~PAGE_CACHE_MASK;
	unsigned long n = pos >> PAGE_CACHE_SHIFT;
	unsigned long npages = FUNC3(inode);

	pos = (pos + SYSV_DIRSIZE-1) & ~(SYSV_DIRSIZE-1);
	if (pos >= inode->i_size)
		goto done;

	for ( ; n < npages; n++, offset = 0) {
		char *kaddr, *limit;
		struct sysv_dir_entry *de;
		struct page *page = FUNC2(inode, n);

		if (FUNC0(page))
			continue;
		kaddr = (char *)FUNC6(page);
		de = (struct sysv_dir_entry *)(kaddr+offset);
		limit = kaddr + PAGE_CACHE_SIZE - SYSV_DIRSIZE;
		for ( ;(char*)de <= limit; de++) {
			char *name = de->name;
			int over;

			if (!de->inode)
				continue;

			offset = (char *)de - kaddr;

			over = filldir(dirent, name, FUNC7(name,SYSV_NAMELEN),
					((loff_t)n<<PAGE_CACHE_SHIFT) | offset,
					FUNC5(FUNC1(sb), de->inode),
					DT_UNKNOWN);
			if (over) {
				FUNC4(page);
				goto done;
			}
		}
		FUNC4(page);
	}

done:
	filp->f_pos = ((loff_t)n << PAGE_CACHE_SHIFT) | offset;
	return 0;
}