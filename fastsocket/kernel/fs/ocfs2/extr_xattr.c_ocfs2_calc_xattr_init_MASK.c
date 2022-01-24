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
struct ocfs2_super {int s_mount_opt; } ;
struct ocfs2_security_xattr_info {int value_len; scalar_t__ enable; int /*<<< orphan*/  name; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_5__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ OCFS2_MIN_BLOCKSIZE ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 struct ocfs2_super* FUNC0 (TYPE_1__*) ; 
 scalar_t__ OCFS2_XATTR_BLOCK_CREATE_CREDITS ; 
 int FUNC1 (struct inode*) ; 
 int OCFS2_XATTR_FREE_IN_IBODY ; 
 int /*<<< orphan*/  OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 int OCFS2_XATTR_INLINE_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (struct ocfs2_super*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct inode *dir,
			  struct buffer_head *dir_bh,
			  int mode,
			  struct ocfs2_security_xattr_info *si,
			  int *want_clusters,
			  int *xattr_credits,
			  int *want_meta)
{
	int ret = 0;
	struct ocfs2_super *osb = FUNC0(dir->i_sb);
	int s_size = 0, a_size = 0, acl_len = 0, new_clusters;

	if (si->enable)
		s_size = FUNC8(FUNC10(si->name),
						     si->value_len);

	if (osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL) {
		acl_len = FUNC9(dir, dir_bh,
					OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT,
					"", NULL, 0);
		if (acl_len > 0) {
			a_size = FUNC8(0, acl_len);
			if (FUNC2(mode))
				a_size <<= 1;
		} else if (acl_len != 0 && acl_len != -ENODATA) {
			FUNC3(ret);
			return ret;
		}
	}

	if (!(s_size + a_size))
		return ret;

	/*
	 * The max space of security xattr taken inline is
	 * 256(name) + 80(value) + 16(entry) = 352 bytes,
	 * The max space of acl xattr taken inline is
	 * 80(value) + 16(entry) * 2(if directory) = 192 bytes,
	 * when blocksize = 512, may reserve one more cluser for
	 * xattr bucket, otherwise reserve one metadata block
	 * for them is ok.
	 * If this is a new directory with inline data,
	 * we choose to reserve the entire inline area for
	 * directory contents and force an external xattr block.
	 */
	if (dir->i_sb->s_blocksize == OCFS2_MIN_BLOCKSIZE ||
	    (FUNC2(mode) && FUNC7(osb)) ||
	    (s_size + a_size) > OCFS2_XATTR_FREE_IN_IBODY) {
		*want_meta = *want_meta + 1;
		*xattr_credits += OCFS2_XATTR_BLOCK_CREATE_CREDITS;
	}

	if (dir->i_sb->s_blocksize == OCFS2_MIN_BLOCKSIZE &&
	    (s_size + a_size) > FUNC1(dir)) {
		*want_clusters += 1;
		*xattr_credits += FUNC4(dir->i_sb);
	}

	/*
	 * reserve credits and clusters for xattrs which has large value
	 * and have to be set outside
	 */
	if (si->enable && si->value_len > OCFS2_XATTR_INLINE_SIZE) {
		new_clusters = FUNC5(dir->i_sb,
							si->value_len);
		*xattr_credits += FUNC6(dir->i_sb,
							   new_clusters);
		*want_clusters += new_clusters;
	}
	if (osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL &&
	    acl_len > OCFS2_XATTR_INLINE_SIZE) {
		/* for directory, it has DEFAULT and ACCESS two types of acls */
		new_clusters = (FUNC2(mode) ? 2 : 1) *
				FUNC5(dir->i_sb, acl_len);
		*xattr_credits += FUNC6(dir->i_sb,
							   new_clusters);
		*want_clusters += new_clusters;
	}

	return ret;
}