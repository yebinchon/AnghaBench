#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct nfs_entry {int /*<<< orphan*/ * fh; int /*<<< orphan*/ * fattr; scalar_t__ eof; int /*<<< orphan*/  cookie; scalar_t__ prev_cookie; } ;
struct nfs_cache_array {int eof_index; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  last_cookie; struct file* file; } ;
typedef  TYPE_1__ nfs_readdir_descriptor_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct page**) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ FUNC1 (struct nfs_cache_array*) ; 
 int NFS_MAX_READDIR_PAGES ; 
 int FUNC2 (struct nfs_cache_array*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_cache_array*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,struct page**,unsigned int) ; 
 struct nfs_cache_array* FUNC9 (struct page*) ; 
 int FUNC10 (struct page**,unsigned int) ; 
 int FUNC11 (TYPE_1__*,struct nfs_entry*,struct page**,struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int FUNC13 (struct page**,TYPE_1__*,struct nfs_entry*,struct file*,struct inode*) ; 

__attribute__((used)) static
int FUNC14(nfs_readdir_descriptor_t *desc, struct page *page, struct inode *inode)
{
	struct page *pages[NFS_MAX_READDIR_PAGES];
	void *pages_ptr = NULL;
	struct nfs_entry entry;
	struct file	*file = desc->file;
	struct nfs_cache_array *array;
	int status = -ENOMEM;
	unsigned int array_size = FUNC0(pages);

	entry.prev_cookie = 0;
	entry.cookie = desc->last_cookie;
	entry.eof = 0;
	entry.fh = FUNC5();
	entry.fattr = FUNC4();
	if (entry.fh == NULL || entry.fattr == NULL)
		goto out;

	array = FUNC9(page);
	if (FUNC1(array)) {
		status = FUNC2(array);
		goto out;
	}
	FUNC3(array, 0, sizeof(struct nfs_cache_array));
	array->eof_index = -1;

	status = FUNC10(pages, array_size);
	if (status < 0)
		goto out_release_array;
	do {
		unsigned int pglen;
		status = FUNC13(pages, desc, &entry, file, inode);

		if (status < 0)
			break;
		pglen = status;
		status = FUNC11(desc, &entry, pages, page, pglen);
		if (status < 0) {
			if (status == -ENOSPC)
				status = 0;
			break;
		}
	} while (array->eof_index < 0);

	FUNC8(pages_ptr, pages, array_size);
out_release_array:
	FUNC12(page);
out:
	FUNC6(entry.fattr);
	FUNC7(entry.fh);
	return status;
}