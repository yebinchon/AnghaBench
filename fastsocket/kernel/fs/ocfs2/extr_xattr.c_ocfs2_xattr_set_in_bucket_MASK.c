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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xattr_search {scalar_t__ not_found; struct ocfs2_xattr_entry* here; } ;
struct ocfs2_xattr_info {size_t value_len; int /*<<< orphan*/ * value; int /*<<< orphan*/  name; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 size_t OCFS2_XATTR_INLINE_SIZE ; 
 size_t OCFS2_XATTR_ROOT_SIZE ; 
 int /*<<< orphan*/  def_xv ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_xattr_search*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_xattr_search*,char*,size_t) ; 
 int FUNC3 (struct inode*,struct ocfs2_xattr_search*,size_t,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
				     struct ocfs2_xattr_info *xi,
				     struct ocfs2_xattr_search *xs,
				     struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret, local = 1;
	size_t value_len;
	char *val = (char *)xi->value;
	struct ocfs2_xattr_entry *xe = xs->here;
	u32 name_hash = FUNC5(inode, xi->name,
					      FUNC7(xi->name));

	if (!xs->not_found && !FUNC4(xe)) {
		/*
		 * We need to truncate the xattr storage first.
		 *
		 * If both the old and new value are stored to
		 * outside block, we only need to truncate
		 * the storage and then set the value outside.
		 *
		 * If the new value should be stored within block,
		 * we should free all the outside block first and
		 * the modification to the xattr block will be done
		 * by following steps.
		 */
		if (xi->value_len > OCFS2_XATTR_INLINE_SIZE)
			value_len = xi->value_len;
		else
			value_len = 0;

		ret = FUNC3(inode, xs,
							   value_len,
							   ctxt);
		if (ret)
			goto out;

		if (value_len)
			goto set_value_outside;
	}

	value_len = xi->value_len;
	/* So we have to handle the inside block change now. */
	if (value_len > OCFS2_XATTR_INLINE_SIZE) {
		/*
		 * If the new value will be stored outside of block,
		 * initalize a new empty value root and insert it first.
		 */
		local = 0;
		xi->value = &def_xv;
		xi->value_len = OCFS2_XATTR_ROOT_SIZE;
	}

	ret = FUNC6(inode, ctxt->handle, xi, xs,
					      name_hash, local);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	if (value_len <= OCFS2_XATTR_INLINE_SIZE)
		goto out;

	/* allocate the space now for the outside block storage. */
	ret = FUNC3(inode, xs,
						   value_len, ctxt);
	if (ret) {
		FUNC0(ret);

		if (xs->not_found) {
			/*
			 * We can't allocate enough clusters for outside
			 * storage and we have allocated xattr already,
			 * so need to remove it.
			 */
			FUNC1(inode, ctxt->handle, xs);
		}
		goto out;
	}

set_value_outside:
	ret = FUNC2(inode, ctxt->handle,
						   xs, val, value_len);
out:
	return ret;
}