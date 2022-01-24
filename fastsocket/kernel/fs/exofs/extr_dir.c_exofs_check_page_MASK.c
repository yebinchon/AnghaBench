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
struct page {unsigned int index; TYPE_1__* mapping; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/  i_ino; } ;
struct exofs_dir_entry {int name_len; int /*<<< orphan*/  inode_no; int /*<<< orphan*/  rec_len; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 unsigned int PAGE_CACHE_MASK ; 
 unsigned int PAGE_CACHE_SHIFT ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct inode*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct page*) ; 

__attribute__((used)) static void FUNC9(struct page *page)
{
	struct inode *dir = page->mapping->host;
	unsigned chunk_size = FUNC5(dir);
	char *kaddr = FUNC8(page);
	unsigned offs, rec_len;
	unsigned limit = PAGE_CACHE_SIZE;
	struct exofs_dir_entry *p;
	char *error;

	/* if the page is the last one in the directory */
	if ((dir->i_size >> PAGE_CACHE_SHIFT) == page->index) {
		limit = dir->i_size & ~PAGE_CACHE_MASK;
		if (limit & (chunk_size - 1))
			goto Ebadsize;
		if (!limit)
			goto out;
	}
	for (offs = 0; offs <= limit - FUNC0(1); offs += rec_len) {
		p = (struct exofs_dir_entry *)(kaddr + offs);
		rec_len = FUNC6(p->rec_len);

		if (rec_len < FUNC0(1))
			goto Eshort;
		if (rec_len & 3)
			goto Ealign;
		if (rec_len < FUNC0(p->name_len))
			goto Enamelen;
		if (((offs + rec_len - 1) ^ offs) & ~(chunk_size-1))
			goto Espan;
	}
	if (offs != limit)
		goto Eend;
out:
	FUNC2(page);
	return;

Ebadsize:
	FUNC1("ERROR [exofs_check_page]: "
		"size of directory #%lu is not a multiple of chunk size",
		dir->i_ino
	);
	goto fail;
Eshort:
	error = "rec_len is smaller than minimal";
	goto bad_entry;
Ealign:
	error = "unaligned directory entry";
	goto bad_entry;
Enamelen:
	error = "rec_len is too small for name_len";
	goto bad_entry;
Espan:
	error = "directory entry across blocks";
	goto bad_entry;
bad_entry:
	FUNC1(
		"ERROR [exofs_check_page]: bad entry in directory #%lu: %s - "
		"offset=%lu, inode=%llu, rec_len=%d, name_len=%d",
		dir->i_ino, error, (page->index<<PAGE_CACHE_SHIFT)+offs,
		FUNC4(FUNC7(p->inode_no)),
		rec_len, p->name_len);
	goto fail;
Eend:
	p = (struct exofs_dir_entry *)(kaddr + offs);
	FUNC1("ERROR [exofs_check_page]: "
		"entry in directory #%lu spans the page boundary"
		"offset=%lu, inode=%llu",
		dir->i_ino, (page->index<<PAGE_CACHE_SHIFT)+offs,
		FUNC4(FUNC7(p->inode_no)));
fail:
	FUNC2(page);
	FUNC3(page);
}