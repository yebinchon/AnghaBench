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
struct nfs4_deviceid_node {int /*<<< orphan*/  ref; int /*<<< orphan*/  node; int /*<<< orphan*/  deviceid; int /*<<< orphan*/  nfs_client; int /*<<< orphan*/  ld; } ;

/* Variables and functions */
 struct nfs4_deviceid_node* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nfs4_deviceid_cache ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs4_deviceid_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct nfs4_deviceid_node *
FUNC6(struct nfs4_deviceid_node *new)
{
	struct nfs4_deviceid_node *d;
	long hash;

	FUNC4(&nfs4_deviceid_lock);
	hash = FUNC3(&new->deviceid);
	d = FUNC0(new->ld, new->nfs_client, &new->deviceid, hash);
	if (d) {
		FUNC5(&nfs4_deviceid_lock);
		return d;
	}

	FUNC2(&new->node, &nfs4_deviceid_cache[hash]);
	FUNC5(&nfs4_deviceid_lock);
	FUNC1(&new->ref);

	return new;
}