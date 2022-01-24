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
struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_leaf_bh; int /*<<< orphan*/  dl_hinfo; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOSPC ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ocfs2_super*,struct inode*,struct buffer_head*,unsigned int,struct ocfs2_dir_lookup_result*,struct buffer_head**) ; 
 int FUNC8 (struct inode*,char const*,int,struct buffer_head**) ; 
 int FUNC9 (struct inode*,struct buffer_head*,char const*,int,struct buffer_head**,unsigned int*) ; 
 int FUNC10 (struct inode*,struct buffer_head*,char const*,int,struct ocfs2_dir_lookup_result*) ; 
 scalar_t__ FUNC11 (struct ocfs2_super*) ; 

int FUNC12(struct ocfs2_super *osb,
				 struct inode *dir,
				 struct buffer_head *parent_fe_bh,
				 const char *name,
				 int namelen,
				 struct ocfs2_dir_lookup_result *lookup)
{
	int ret;
	unsigned int blocks_wanted = 1;
	struct buffer_head *bh = NULL;

	FUNC3(0, "getting ready to insert namelen %d into dir %llu\n",
	     namelen, (unsigned long long)FUNC1(dir)->ip_blkno);

	if (!namelen) {
		ret = -EINVAL;
		FUNC4(ret);
		goto out;
	}

	/*
	 * Do this up front to reduce confusion.
	 *
	 * The directory might start inline, then be turned into an
	 * indexed one, in which case we'd need to hash deep inside
	 * ocfs2_find_dir_space_id(). Since
	 * ocfs2_prepare_dx_dir_for_insert() also needs this hash
	 * done, there seems no point in spreading out the calls. We
	 * can optimize away the case where the file system doesn't
	 * support indexing.
	 */
	if (FUNC11(osb))
		FUNC6(dir, name, namelen, &lookup->dl_hinfo);

	if (FUNC5(dir)) {
		ret = FUNC10(dir, parent_fe_bh,
						      name, namelen, lookup);
		if (ret)
			FUNC4(ret);
		goto out;
	}

	if (FUNC1(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		ret = FUNC9(dir, parent_fe_bh, name,
					      namelen, &bh, &blocks_wanted);
	} else
		ret = FUNC8(dir, name, namelen, &bh);

	if (ret && ret != -ENOSPC) {
		FUNC4(ret);
		goto out;
	}

	if (ret == -ENOSPC) {
		/*
		 * We have to expand the directory to add this name.
		 */
		FUNC0(bh);

		ret = FUNC7(osb, dir, parent_fe_bh, blocks_wanted,
				       lookup, &bh);
		if (ret) {
			if (ret != -ENOSPC)
				FUNC4(ret);
			goto out;
		}

		FUNC0(!bh);
	}

	lookup->dl_leaf_bh = bh;
	bh = NULL;
out:
	FUNC2(bh);
	return ret;
}