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
struct nfs_client {int /*<<< orphan*/  fscache; } ;
struct TYPE_2__ {int /*<<< orphan*/  primary_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct nfs_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs_client*) ; 
 TYPE_1__ nfs_fscache_netfs ; 
 int /*<<< orphan*/  nfs_fscache_server_index_def ; 

void FUNC2(struct nfs_client *clp)
{
	/* create a cache index for looking up filehandles */
	clp->fscache = FUNC1(nfs_fscache_netfs.primary_index,
					      &nfs_fscache_server_index_def,
					      clp);
	FUNC0(FSCACHE, "NFS: get client cookie (0x%p/0x%p)\n",
		 clp, clp->fscache);
}