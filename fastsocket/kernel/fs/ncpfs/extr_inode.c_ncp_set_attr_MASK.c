#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct ncp_server {TYPE_1__ m; } ;
struct ncp_entry_info {int /*<<< orphan*/  i; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 struct ncp_server* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct ncp_entry_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ncp_entry_info*) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, struct ncp_entry_info *nwinfo)
{
	struct ncp_server *server = FUNC2(inode);

	FUNC1(inode)->flags = 0;
	
	FUNC3(inode, nwinfo);

	FUNC0("ncp_read_inode: inode->i_mode = %u\n", inode->i_mode);

	inode->i_nlink = 1;
	inode->i_uid = server->m.uid;
	inode->i_gid = server->m.gid;

	FUNC4(inode, &nwinfo->i);
	FUNC5(inode, nwinfo);
}