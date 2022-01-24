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
struct nfs_client {TYPE_1__* cl_mvops; } ;
struct TYPE_2__ {int /*<<< orphan*/  reboot_recovery_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 

__attribute__((used)) static void FUNC2(struct nfs_client *clp)
{
	if (!FUNC1(clp))
		return;
	FUNC0(clp, clp->cl_mvops->reboot_recovery_ops);
}