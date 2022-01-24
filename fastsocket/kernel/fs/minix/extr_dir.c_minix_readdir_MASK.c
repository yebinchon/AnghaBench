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
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct minix_sb_info {unsigned int s_dirsize; scalar_t__ s_version; int /*<<< orphan*/  s_namelen; } ;
struct inode {unsigned long i_size; struct super_block* i_sb; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {unsigned long f_pos; TYPE_2__ f_path; } ;
struct TYPE_7__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_3__ minix_dirent ;
struct TYPE_8__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_4__ minix3_dirent ;
typedef  int (* filldir_t ) (void*,char*,unsigned int,unsigned long,scalar_t__,int /*<<< orphan*/ ) ;
typedef  scalar_t__ __u32 ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ MINIX_V3 ; 
 unsigned long PAGE_CACHE_MASK ; 
 unsigned long PAGE_CACHE_SHIFT ; 
 struct page* FUNC1 (struct inode*,unsigned long) ; 
 unsigned long FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct inode*,unsigned long) ; 
 char* FUNC5 (char*,struct minix_sb_info*) ; 
 struct minix_sb_info* FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 unsigned int FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct file * filp, void * dirent, filldir_t filldir)
{
	unsigned long pos = filp->f_pos;
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct super_block *sb = inode->i_sb;
	unsigned offset = pos & ~PAGE_CACHE_MASK;
	unsigned long n = pos >> PAGE_CACHE_SHIFT;
	unsigned long npages = FUNC2(inode);
	struct minix_sb_info *sbi = FUNC6(sb);
	unsigned chunk_size = sbi->s_dirsize;
	char *name;
	__u32 inumber;

	pos = (pos + chunk_size-1) & ~(chunk_size-1);
	if (pos >= inode->i_size)
		goto done;

	for ( ; n < npages; n++, offset = 0) {
		char *p, *kaddr, *limit;
		struct page *page = FUNC1(inode, n);

		if (FUNC0(page))
			continue;
		kaddr = (char *)FUNC7(page);
		p = kaddr+offset;
		limit = kaddr + FUNC4(inode, n) - chunk_size;
		for ( ; p <= limit; p = FUNC5(p, sbi)) {
			if (sbi->s_version == MINIX_V3) {
				minix3_dirent *de3 = (minix3_dirent *)p;
				name = de3->name;
				inumber = de3->inode;
	 		} else {
				minix_dirent *de = (minix_dirent *)p;
				name = de->name;
				inumber = de->inode;
			}
			if (inumber) {
				int over;

				unsigned l = FUNC8(name, sbi->s_namelen);
				offset = p - kaddr;
				over = filldir(dirent, name, l,
					(n << PAGE_CACHE_SHIFT) | offset,
					inumber, DT_UNKNOWN);
				if (over) {
					FUNC3(page);
					goto done;
				}
			}
		}
		FUNC3(page);
	}

done:
	filp->f_pos = (n << PAGE_CACHE_SHIFT) | offset;
	return 0;
}