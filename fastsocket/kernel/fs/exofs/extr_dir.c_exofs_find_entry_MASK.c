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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct exofs_i_info {unsigned long i_dir_start_lookup; } ;
struct exofs_dir_entry {scalar_t__ rec_len; } ;
struct TYPE_2__ {unsigned char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned long FUNC3 (struct inode*) ; 
 struct page* FUNC4 (struct inode*,unsigned long) ; 
 struct exofs_i_info* FUNC5 (struct inode*) ; 
 unsigned int FUNC6 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC7 (int,unsigned char const*,struct exofs_dir_entry*) ; 
 struct exofs_dir_entry* FUNC8 (struct exofs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 char* FUNC10 (struct page*) ; 

struct exofs_dir_entry *FUNC11(struct inode *dir,
			struct dentry *dentry, struct page **res_page)
{
	const unsigned char *name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	unsigned reclen = FUNC0(namelen);
	unsigned long start, n;
	unsigned long npages = FUNC3(dir);
	struct page *page = NULL;
	struct exofs_i_info *oi = FUNC5(dir);
	struct exofs_dir_entry *de;

	if (npages == 0)
		goto out;

	*res_page = NULL;

	start = oi->i_dir_start_lookup;
	if (start >= npages)
		start = 0;
	n = start;
	do {
		char *kaddr;
		page = FUNC4(dir, n);
		if (!FUNC2(page)) {
			kaddr = FUNC10(page);
			de = (struct exofs_dir_entry *) kaddr;
			kaddr += FUNC6(dir, n) - reclen;
			while ((char *) de <= kaddr) {
				if (de->rec_len == 0) {
					FUNC1(
						"ERROR: exofs_find_entry: "
						"zero-length directory entry");
					FUNC9(page);
					goto out;
				}
				if (FUNC7(namelen, name, de))
					goto found;
				de = FUNC8(de);
			}
			FUNC9(page);
		}
		if (++n >= npages)
			n = 0;
	} while (n != start);
out:
	return NULL;

found:
	*res_page = page;
	oi->i_dir_start_lookup = n;
	return de;
}