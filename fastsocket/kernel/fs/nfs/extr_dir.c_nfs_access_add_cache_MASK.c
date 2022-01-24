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
struct nfs_access_entry {int /*<<< orphan*/  mask; int /*<<< orphan*/  cred; int /*<<< orphan*/  jiffies; int /*<<< orphan*/  rb_node; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  access_cache_inode_lru; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ACL_LRU_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct nfs_access_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct nfs_access_entry*) ; 
 int /*<<< orphan*/  nfs_access_lru_list ; 
 int /*<<< orphan*/  nfs_access_lru_lock ; 
 int /*<<< orphan*/  nfs_access_nr_entries ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(struct inode *inode, struct nfs_access_entry *set)
{
	struct nfs_access_entry *cache = FUNC4(sizeof(*cache), GFP_KERNEL);
	if (cache == NULL)
		return;
	FUNC1(&cache->rb_node);
	cache->jiffies = set->jiffies;
	cache->cred = FUNC3(set->cred);
	cache->mask = set->mask;

	FUNC6(inode, cache);

	/* Update accounting */
	FUNC8();
	FUNC2(&nfs_access_nr_entries);
	FUNC7();

	/* Add inode to global LRU list */
	if (!FUNC12(NFS_INO_ACL_LRU_SET, &FUNC0(inode)->flags)) {
		FUNC9(&nfs_access_lru_lock);
		if (!FUNC11(NFS_INO_ACL_LRU_SET, &FUNC0(inode)->flags))
			FUNC5(&FUNC0(inode)->access_cache_inode_lru,
					&nfs_access_lru_list);
		FUNC10(&nfs_access_lru_lock);
	}
}