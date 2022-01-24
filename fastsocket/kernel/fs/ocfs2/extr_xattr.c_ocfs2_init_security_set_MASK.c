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
struct ocfs2_security_xattr_info {int /*<<< orphan*/  value_len; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_XATTR_INDEX_SECURITY ; 
 int FUNC0 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 

int FUNC1(handle_t *handle,
			    struct inode *inode,
			    struct buffer_head *di_bh,
			    struct ocfs2_security_xattr_info *si,
			    struct ocfs2_alloc_context *xattr_ac,
			    struct ocfs2_alloc_context *data_ac)
{
	return FUNC0(handle, inode, di_bh,
				     OCFS2_XATTR_INDEX_SECURITY,
				     si->name, si->value, si->value_len, 0,
				     xattr_ac, data_ac);
}