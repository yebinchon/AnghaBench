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
struct nilfs_palloc_req {void* pr_entry_nr; } ;
struct nilfs_direct {int dummy; } ;
struct nilfs_bmap {scalar_t__ b_ptr_type; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  void* __u64 ;

/* Variables and functions */
 scalar_t__ NILFS_BMAP_PTR_VS ; 
 int /*<<< orphan*/  FUNC0 (struct nilfs_bmap const*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (struct nilfs_bmap const*,struct buffer_head*) ; 
 struct inode* FUNC3 (struct nilfs_bmap const*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct nilfs_palloc_req*,struct nilfs_palloc_req*,int) ; 
 int FUNC5 (struct inode*,void*) ; 
 int FUNC6 (struct inode*,struct nilfs_palloc_req*,struct nilfs_palloc_req*) ; 
 void* FUNC7 (struct nilfs_direct*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_direct*,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC10(const struct nilfs_bmap *bmap,
				  struct buffer_head *bh)
{
	struct nilfs_direct *direct = (struct nilfs_direct *)bmap;
	struct nilfs_palloc_req oldreq, newreq;
	struct inode *dat;
	__u64 key;
	__u64 ptr;
	int ret;

	if (!FUNC0(bmap))
		return 0;

	dat = FUNC3(bmap);
	key = FUNC2(bmap, bh);
	ptr = FUNC7(direct, key);
	if (!FUNC1(bh)) {
		oldreq.pr_entry_nr = ptr;
		newreq.pr_entry_nr = ptr;
		ret = FUNC6(dat, &oldreq, &newreq);
		if (ret < 0)
			return ret;
		FUNC4(dat, &oldreq, &newreq,
					bmap->b_ptr_type == NILFS_BMAP_PTR_VS);
		FUNC9(bh);
		FUNC8(direct, key, newreq.pr_entry_nr);
	} else
		ret = FUNC5(dat, ptr);

	return ret;
}