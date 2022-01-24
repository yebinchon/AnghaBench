#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct xdr_buf {unsigned int page_len; unsigned int buflen; unsigned int len; struct page** pages; } ;
struct page {int dummy; } ;
struct nfs_entry {scalar_t__ eof; } ;
struct nfs_cache_array {int /*<<< orphan*/  size; int /*<<< orphan*/  eof_index; } ;
struct TYPE_8__ {scalar_t__ plus; TYPE_2__* file; } ;
typedef  TYPE_3__ nfs_readdir_descriptor_t ;
struct TYPE_6__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_7__ {TYPE_1__ f_path; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADCOOKIE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_cache_array*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct nfs_cache_array*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nfs_entry*) ; 
 int FUNC4 (struct nfs_entry*,struct page*) ; 
 struct nfs_cache_array* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (TYPE_3__*,struct nfs_entry*,struct xdr_stream*) ; 
 int /*<<< orphan*/  FUNC10 (struct xdr_stream*,struct xdr_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC12(nfs_readdir_descriptor_t *desc, struct nfs_entry *entry,
				struct page **xdr_pages, struct page *page, unsigned int buflen)
{
	struct xdr_stream stream;
	struct xdr_buf buf = {
		.pages = xdr_pages,
		.page_len = buflen,
		.buflen = buflen,
		.len = buflen,
	};
	struct page *scratch;
	struct nfs_cache_array *array;
	unsigned int count = 0;
	int status;

	scratch = FUNC2(GFP_KERNEL);
	if (scratch == NULL)
		return -ENOMEM;

	FUNC10(&stream, &buf, NULL);
	FUNC11(&stream, FUNC7(scratch), PAGE_SIZE);

	do {
		status = FUNC9(desc, entry, &stream);
		if (status != 0) {
			if (status == -EAGAIN)
				status = 0;
			break;
		}

		count++;

		if (desc->plus != 0)
			FUNC3(desc->file->f_path.dentry, entry);

		status = FUNC4(entry, page);
		if (status != 0)
			break;
	} while (!entry->eof);

	if (count == 0 || (status == -EBADCOOKIE && entry->eof != 0)) {
		array = FUNC5(page);
		if (!FUNC0(array)) {
			array->eof_index = array->size;
			status = 0;
			FUNC6(page);
		} else
			status = FUNC1(array);
	}

	FUNC8(scratch);
	return status;
}