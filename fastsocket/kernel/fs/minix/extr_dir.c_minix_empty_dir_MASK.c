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
struct page {int dummy; } ;
struct minix_sb_info {char* s_dirsize; scalar_t__ s_version; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_1__ minix_dirent ;
struct TYPE_4__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_2__ minix3_dirent ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ MINIX_V3 ; 
 struct page* FUNC1 (struct inode*,unsigned long) ; 
 unsigned long FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct inode*,unsigned long) ; 
 char* FUNC5 (char*,struct minix_sb_info*) ; 
 struct minix_sb_info* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct page*) ; 

int FUNC8(struct inode * inode)
{
	struct page *page = NULL;
	unsigned long i, npages = FUNC2(inode);
	struct minix_sb_info *sbi = FUNC6(inode->i_sb);
	char *name;
	__u32 inumber;

	for (i = 0; i < npages; i++) {
		char *p, *kaddr, *limit;

		page = FUNC1(inode, i);
		if (FUNC0(page))
			continue;

		kaddr = (char *)FUNC7(page);
		limit = kaddr + FUNC4(inode, i) - sbi->s_dirsize;
		for (p = kaddr; p <= limit; p = FUNC5(p, sbi)) {
			if (sbi->s_version == MINIX_V3) {
				minix3_dirent *de3 = (minix3_dirent *)p;
				name = de3->name;
				inumber = de3->inode;
			} else {
				minix_dirent *de = (minix_dirent *)p;
				name = de->name;
				inumber = de->inode;
			}

			if (inumber != 0) {
				/* check for . and .. */
				if (name[0] != '.')
					goto not_empty;
				if (!name[1]) {
					if (inumber != inode->i_ino)
						goto not_empty;
				} else if (name[1] != '.')
					goto not_empty;
				else if (name[2])
					goto not_empty;
			}
		}
		FUNC3(page);
	}
	return 1;

not_empty:
	FUNC3(page);
	return 0;
}