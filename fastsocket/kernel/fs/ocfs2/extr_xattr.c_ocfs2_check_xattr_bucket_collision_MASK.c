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
typedef  scalar_t__ u32 ;
struct ocfs2_xattr_header {TYPE_1__* xh_entries; int /*<<< orphan*/  xh_count; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ xe_name_hash; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ FUNC0 (struct ocfs2_xattr_bucket*) ; 
 struct ocfs2_xattr_header* FUNC1 (struct ocfs2_xattr_bucket*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__) ; 
 scalar_t__ FUNC5 (struct inode*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
					      struct ocfs2_xattr_bucket *bucket,
					      const char *name)
{
	struct ocfs2_xattr_header *xh = FUNC1(bucket);
	u32 name_hash = FUNC5(inode, name, FUNC6(name));

	if (name_hash != FUNC3(xh->xh_entries[0].xe_name_hash))
		return 0;

	if (xh->xh_entries[FUNC2(xh->xh_count) - 1].xe_name_hash ==
	    xh->xh_entries[0].xe_name_hash) {
		FUNC4(ML_ERROR, "Too much hash collision in xattr bucket %llu, "
		     "hash = %u\n",
		     (unsigned long long)FUNC0(bucket),
		     FUNC3(xh->xh_entries[0].xe_name_hash));
		return -ENOSPC;
	}

	return 0;
}