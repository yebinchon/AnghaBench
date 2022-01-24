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
struct nfs_delegation {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_REFERENCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct nfs_delegation *delegation)
{
	FUNC0(NFS_DELEGATION_REFERENCED, &delegation->flags);
}