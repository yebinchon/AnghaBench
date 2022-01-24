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
struct rpc_cred {int dummy; } ;
struct nfs_inode {int cache_validity; int /*<<< orphan*/  access_cache; int /*<<< orphan*/  access_cache_entry_lru; scalar_t__ attrtimeo; } ;
struct nfs_access_entry {int /*<<< orphan*/  lru; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  mask; int /*<<< orphan*/  cred; scalar_t__ jiffies; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_ACCESS ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_access_entry*) ; 
 struct nfs_access_entry* FUNC4 (struct inode*,struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct rpc_cred *cred, struct nfs_access_entry *res)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_access_entry *cache;
	int err = -ENOENT;

	FUNC8(&inode->i_lock);
	if (nfsi->cache_validity & NFS_INO_INVALID_ACCESS)
		goto out_zap;
	cache = FUNC4(inode, cred);
	if (cache == NULL)
		goto out;
	if (!FUNC6(inode) &&
	    !FUNC10(jiffies, cache->jiffies, cache->jiffies + nfsi->attrtimeo))
		goto out_stale;
	res->jiffies = cache->jiffies;
	res->cred = cache->cred;
	res->mask = cache->mask;
	FUNC2(&cache->lru, &nfsi->access_cache_entry_lru);
	err = 0;
out:
	FUNC9(&inode->i_lock);
	return err;
out_stale:
	FUNC7(&cache->rb_node, &nfsi->access_cache);
	FUNC1(&cache->lru);
	FUNC9(&inode->i_lock);
	FUNC3(cache);
	return -ENOENT;
out_zap:
	FUNC9(&inode->i_lock);
	FUNC5(inode);
	return -ENOENT;
}