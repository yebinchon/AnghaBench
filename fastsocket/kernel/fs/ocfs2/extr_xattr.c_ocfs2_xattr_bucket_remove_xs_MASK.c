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
struct ocfs2_xattr_search {int /*<<< orphan*/  bucket; scalar_t__ here; } ;
struct ocfs2_xattr_header {int /*<<< orphan*/  xh_count; struct ocfs2_xattr_entry* xh_entries; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_xattr_header* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_xattr_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct inode *inode,
					 handle_t *handle,
					 struct ocfs2_xattr_search *xs)
{
	struct ocfs2_xattr_header *xh = FUNC0(xs->bucket);
	struct ocfs2_xattr_entry *last = &xh->xh_entries[
						FUNC2(xh->xh_count) - 1];
	int ret = 0;

	ret = FUNC6(handle, xs->bucket,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC5(ret);
		return;
	}

	/* Remove the old entry. */
	FUNC3(xs->here, xs->here + 1,
		(void *)last - (void *)xs->here);
	FUNC4(last, 0, sizeof(struct ocfs2_xattr_entry));
	FUNC1(&xh->xh_count, -1);

	FUNC7(handle, xs->bucket);
}