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
struct nfs_client {int cl_exchange_flags; } ;

/* Variables and functions */
 int EXCHGID4_FLAG_USE_PNFS_MDS ; 
 long NFS4_DEVICE_ID_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_client const*,long) ; 

void
FUNC1(const struct nfs_client *clp)
{
	long h;

	if (!(clp->cl_exchange_flags & EXCHGID4_FLAG_USE_PNFS_MDS))
		return;
	for (h = 0; h < NFS4_DEVICE_ID_HASH_SIZE; h++)
		FUNC0(clp, h);
}