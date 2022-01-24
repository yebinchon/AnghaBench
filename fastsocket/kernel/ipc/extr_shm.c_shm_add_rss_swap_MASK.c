#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct shmid_kernel {TYPE_3__* shm_file; } ;
struct shmem_inode_info {int /*<<< orphan*/  lock; scalar_t__ swapped; } ;
struct inode {struct address_space* i_mapping; } ;
struct hstate {int dummy; } ;
struct address_space {unsigned long nrpages; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 struct shmem_inode_info* FUNC0 (struct inode*) ; 
 struct hstate* FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 unsigned long FUNC3 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct shmid_kernel *shp,
	unsigned long *rss_add, unsigned long *swp_add)
{
	struct inode *inode;

	inode = shp->shm_file->f_path.dentry->d_inode;

	if (FUNC2(shp->shm_file)) {
		struct address_space *mapping = inode->i_mapping;
		struct hstate *h = FUNC1(shp->shm_file);
		*rss_add += FUNC3(h) * mapping->nrpages;
	} else {
#ifdef CONFIG_SHMEM
		struct shmem_inode_info *info = SHMEM_I(inode);
		spin_lock(&info->lock);
		*rss_add += inode->i_mapping->nrpages;
		*swp_add += info->swapped;
		spin_unlock(&info->lock);
#else
		*rss_add += inode->i_mapping->nrpages;
#endif
	}
}