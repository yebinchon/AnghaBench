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
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct seq_file {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; } ;
struct TYPE_2__ {int /*<<< orphan*/  cl_rpcclient; } ;

/* Variables and functions */
 struct nfs_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_DISPLAY_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, struct vfsmount *mnt)
{
	struct nfs_server *nfss = FUNC0(mnt->mnt_sb);

	FUNC1(m, nfss, 0);

	FUNC3(m, ",addr=%s",
			FUNC2(nfss->nfs_client->cl_rpcclient,
							RPC_DISPLAY_ADDR));

	return 0;
}