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
struct TYPE_3__ {int /*<<< orphan*/  entryName; int /*<<< orphan*/  attributes; } ;
struct ncp_entry_info {TYPE_1__ i; int /*<<< orphan*/  file_handle; int /*<<< orphan*/  access; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dirEntNum; int /*<<< orphan*/  volNumber; int /*<<< orphan*/  file_handle; int /*<<< orphan*/  access; int /*<<< orphan*/  nwattr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct ncp_entry_info*) ; 

void FUNC4(struct inode *inode, struct ncp_entry_info *nwinfo)
{
	FUNC3(inode, nwinfo);
	FUNC1(inode)->nwattr = nwinfo->i.attributes;
	FUNC1(inode)->access = nwinfo->access;
	FUNC2(FUNC1(inode)->file_handle, nwinfo->file_handle,
			sizeof(nwinfo->file_handle));
	FUNC0("ncp_update_inode: updated %s, volnum=%d, dirent=%u\n",
		nwinfo->i.entryName, FUNC1(inode)->volNumber,
		FUNC1(inode)->dirEntNum);
}