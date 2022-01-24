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
struct TYPE_3__ {int /*<<< orphan*/  dirEntNum; int /*<<< orphan*/  DosDirNum; } ;
struct ncp_entry_info {int /*<<< orphan*/  volume; TYPE_1__ i; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  volNumber; int /*<<< orphan*/  dirEntNum; int /*<<< orphan*/  DosDirNum; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 

__attribute__((used)) static void FUNC1(struct inode *inode, struct ncp_entry_info *nwinfo)
{
	FUNC0(inode)->DosDirNum = nwinfo->i.DosDirNum;
	FUNC0(inode)->dirEntNum = nwinfo->i.dirEntNum;
	FUNC0(inode)->volNumber = nwinfo->volume;
}