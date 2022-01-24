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
struct page {int dummy; } ;
struct inode {scalar_t__ i_ino; } ;
struct exofs_dir_entry {scalar_t__ rec_len; scalar_t__ inode_no; char* name; int name_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,struct exofs_dir_entry*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 unsigned long FUNC3 (struct inode*) ; 
 struct page* FUNC4 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC5 (struct inode*,unsigned long) ; 
 struct exofs_dir_entry* FUNC6 (struct exofs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 char* FUNC9 (struct page*) ; 

int FUNC10(struct inode *inode)
{
	struct page *page = NULL;
	unsigned long i, npages = FUNC3(inode);

	for (i = 0; i < npages; i++) {
		char *kaddr;
		struct exofs_dir_entry *de;
		page = FUNC4(inode, i);

		if (FUNC2(page))
			continue;

		kaddr = FUNC9(page);
		de = (struct exofs_dir_entry *)kaddr;
		kaddr += FUNC5(inode, i) - FUNC0(1);

		while ((char *)de <= kaddr) {
			if (de->rec_len == 0) {
				FUNC1("ERROR: exofs_empty_dir: "
					  "zero-length directory entry"
					  "kaddr=%p, de=%p\n", kaddr, de);
				goto not_empty;
			}
			if (de->inode_no != 0) {
				/* check for . and .. */
				if (de->name[0] != '.')
					goto not_empty;
				if (de->name_len > 2)
					goto not_empty;
				if (de->name_len < 2) {
					if (FUNC8(de->inode_no) !=
					    inode->i_ino)
						goto not_empty;
				} else if (de->name[1] != '.')
					goto not_empty;
			}
			de = FUNC6(de);
		}
		FUNC7(page);
	}
	return 1;

not_empty:
	FUNC7(page);
	return 0;
}