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
struct TYPE_2__ {int /*<<< orphan*/  rpcs_out; scalar_t__ ncommit; int /*<<< orphan*/  list; } ;
struct nfs_inode {int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  silly_list; int /*<<< orphan*/  silly_count; TYPE_1__ commit_info; scalar_t__ npages; int /*<<< orphan*/  access_cache_inode_lru; int /*<<< orphan*/  access_cache_entry_lru; int /*<<< orphan*/  open_files; int /*<<< orphan*/  vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_inode*) ; 

__attribute__((used)) static void FUNC6(void *foo)
{
	struct nfs_inode *nfsi = (struct nfs_inode *) foo;

	FUNC4(&nfsi->vfs_inode);
	FUNC1(&nfsi->open_files);
	FUNC1(&nfsi->access_cache_entry_lru);
	FUNC1(&nfsi->access_cache_inode_lru);
	FUNC1(&nfsi->commit_info.list);
	nfsi->npages = 0;
	nfsi->commit_info.ncommit = 0;
	FUNC2(&nfsi->commit_info.rpcs_out, 0);
	FUNC2(&nfsi->silly_count, 1);
	FUNC0(&nfsi->silly_list);
	FUNC3(&nfsi->waitqueue);
	FUNC5(nfsi);
}