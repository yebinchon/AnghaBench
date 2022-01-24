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
typedef  int /*<<< orphan*/  time_t ;
struct nw_info_struct {int /*<<< orphan*/  modifyDate; int /*<<< orphan*/  modifyTime; } ;
struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct ncp_server* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct ncp_server*,struct inode*,int /*<<< orphan*/ *,struct nw_info_struct*) ; 

__attribute__((used)) static time_t FUNC5(struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	struct ncp_server *server = FUNC0(inode);
	struct nw_info_struct i;

	if (!FUNC1(server) || FUNC3(inode))
		return 0;

	if (FUNC4(server, inode, NULL, &i))
		return 0;

	return FUNC2(i.modifyTime, i.modifyDate);
}