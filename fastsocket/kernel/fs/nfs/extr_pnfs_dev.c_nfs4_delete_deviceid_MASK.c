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
struct pnfs_layoutdriver_type {int dummy; } ;
struct nfs_client {int dummy; } ;
struct nfs4_deviceid_node {TYPE_1__* ld; int /*<<< orphan*/  ref; int /*<<< orphan*/  node; } ;
struct nfs4_deviceid {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_deviceid_node ) (struct nfs4_deviceid_node*) ;} ;

/* Variables and functions */
 struct nfs4_deviceid_node* FUNC0 (struct pnfs_layoutdriver_type const*,struct nfs_client const*,struct nfs4_deviceid const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_deviceid const*) ; 
 int /*<<< orphan*/  nfs4_deviceid_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_deviceid_node*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(const struct pnfs_layoutdriver_type *ld,
			 const struct nfs_client *clp, const struct nfs4_deviceid *id)
{
	struct nfs4_deviceid_node *d;

	FUNC6(&nfs4_deviceid_lock);
	FUNC4();
	d = FUNC0(ld, clp, id, FUNC3(id));
	FUNC5();
	if (!d) {
		FUNC7(&nfs4_deviceid_lock);
		return;
	}
	FUNC2(&d->node);
	FUNC7(&nfs4_deviceid_lock);
	FUNC9();

	/* balance the initial ref set in pnfs_insert_deviceid */
	if (FUNC1(&d->ref))
		d->ld->free_deviceid_node(d);
}