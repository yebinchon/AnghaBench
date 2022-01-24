#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs_client {struct idmap* cl_idmap; TYPE_2__* cl_rpcclient; } ;
struct TYPE_8__ {int /*<<< orphan*/  h_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  h_type; } ;
struct idmap {TYPE_4__ idmap_group_hash; TYPE_3__ idmap_user_hash; int /*<<< orphan*/  idmap_wq; int /*<<< orphan*/  idmap_im_lock; int /*<<< orphan*/  idmap_lock; int /*<<< orphan*/  idmap_dentry; } ;
struct TYPE_5__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_6__ {TYPE_1__ cl_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDMAP_TYPE_GROUP ; 
 int /*<<< orphan*/  IDMAP_TYPE_USER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idmap_upcall_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct idmap*) ; 
 struct idmap* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct idmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC8(struct nfs_client *clp)
{
	struct idmap *idmap;
	int error;

	FUNC0(clp->cl_idmap != NULL);

	idmap = FUNC5(sizeof(*idmap), GFP_KERNEL);
	if (idmap == NULL)
		return -ENOMEM;

	idmap->idmap_dentry = FUNC7(clp->cl_rpcclient->cl_path.dentry,
			"idmap", idmap, &idmap_upcall_ops, 0);
	if (FUNC1(idmap->idmap_dentry)) {
		error = FUNC2(idmap->idmap_dentry);
		FUNC4(idmap);
		return error;
	}

	FUNC6(&idmap->idmap_lock);
	FUNC6(&idmap->idmap_im_lock);
	FUNC3(&idmap->idmap_wq);
	idmap->idmap_user_hash.h_type = IDMAP_TYPE_USER;
	idmap->idmap_group_hash.h_type = IDMAP_TYPE_GROUP;

	clp->cl_idmap = idmap;
	return 0;
}