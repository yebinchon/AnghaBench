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
struct nfs_client {struct idmap* cl_idmap; } ;
struct idmap {int /*<<< orphan*/  idmap_group_hash; int /*<<< orphan*/  idmap_user_hash; int /*<<< orphan*/  idmap_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct idmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct nfs_client *clp)
{
	struct idmap *idmap = clp->cl_idmap;

	if (!idmap)
		return;
	FUNC2(idmap->idmap_dentry);
	clp->cl_idmap = NULL;
	FUNC0(&idmap->idmap_user_hash);
	FUNC0(&idmap->idmap_group_hash);
	FUNC1(idmap);
}