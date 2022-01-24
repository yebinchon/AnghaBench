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
struct the_nilfs {int /*<<< orphan*/  ns_segctor_sem; } ;
struct nilfs_bmap {int dummy; } ;
struct nilfs_bdesc {scalar_t__ bd_blocknr; scalar_t__ bd_level; int /*<<< orphan*/  bd_offset; } ;
struct inode {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {struct nilfs_bmap* i_bmap; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nilfs_bmap*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 struct inode* FUNC3 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct the_nilfs *nilfs, __u64 *posp, int flags,
			  void *buf, size_t size, size_t nmembs)
{
	struct inode *dat = FUNC3(nilfs);
	struct nilfs_bmap *bmap = FUNC0(dat)->i_bmap;
	struct nilfs_bdesc *bdescs = buf;
	int ret, i;

	FUNC1(&nilfs->ns_segctor_sem);
	for (i = 0; i < nmembs; i++) {
		ret = FUNC2(bmap,
						 bdescs[i].bd_offset,
						 bdescs[i].bd_level + 1,
						 &bdescs[i].bd_blocknr);
		if (ret < 0) {
			if (ret != -ENOENT) {
				FUNC4(&nilfs->ns_segctor_sem);
				return ret;
			}
			bdescs[i].bd_blocknr = 0;
		}
	}
	FUNC4(&nilfs->ns_segctor_sem);
	return nmembs;
}