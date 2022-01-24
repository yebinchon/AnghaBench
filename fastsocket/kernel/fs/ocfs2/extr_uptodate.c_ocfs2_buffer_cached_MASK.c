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
struct ocfs2_meta_cache_item {int dummy; } ;
struct ocfs2_caching_info {int ci_flags; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int OCFS2_CACHE_FL_INLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC2 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_caching_info*) ; 
 int FUNC4 (struct ocfs2_caching_info*,scalar_t__) ; 
 struct ocfs2_meta_cache_item* FUNC5 (struct ocfs2_caching_info*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_caching_info *ci,
			       struct buffer_head *bh)
{
	int index = -1;
	struct ocfs2_meta_cache_item *item = NULL;

	FUNC1(ci);

	FUNC0(0, "Owner %llu, query block %llu (inline = %u)\n",
	     (unsigned long long)FUNC2(ci),
	     (unsigned long long) bh->b_blocknr,
	     !!(ci->ci_flags & OCFS2_CACHE_FL_INLINE));

	if (ci->ci_flags & OCFS2_CACHE_FL_INLINE)
		index = FUNC4(ci, bh->b_blocknr);
	else
		item = FUNC5(ci, bh->b_blocknr);

	FUNC3(ci);

	FUNC0(0, "index = %d, item = %p\n", index, item);

	return (index != -1) || (item != NULL);
}