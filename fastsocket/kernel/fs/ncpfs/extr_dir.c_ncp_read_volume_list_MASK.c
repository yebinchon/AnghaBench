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
struct ncp_volume_info {unsigned long volume_name; } ;
struct ncp_server {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  volNumber; } ;
struct ncp_entry_info {TYPE_2__ i; int /*<<< orphan*/  volume; } ;
struct ncp_cache_control {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  filldir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int NCP_NUMBER_OF_VOLUMES ; 
 struct ncp_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,void*,int /*<<< orphan*/ ,struct ncp_cache_control*,struct ncp_entry_info*) ; 
 scalar_t__ FUNC3 (struct ncp_server*,int,struct ncp_volume_info*) ; 
 scalar_t__ FUNC4 (struct ncp_server*,unsigned long,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct file *filp, void *dirent, filldir_t filldir,
			struct ncp_cache_control *ctl)
{
	struct dentry *dentry = filp->f_path.dentry;
	struct inode *inode = dentry->d_inode;
	struct ncp_server *server = FUNC1(inode);
	struct ncp_volume_info info;
	struct ncp_entry_info entry;
	int i;

	FUNC0("ncp_read_volume_list: pos=%ld\n",
			(unsigned long) filp->f_pos);

	for (i = 0; i < NCP_NUMBER_OF_VOLUMES; i++) {

		if (FUNC3(server, i, &info) != 0)
			return;
		if (!FUNC5(info.volume_name))
			continue;

		FUNC0("ncp_read_volume_list: found vol: %s\n",
			info.volume_name);

		if (FUNC4(server, info.volume_name,
					&entry.i)) {
			FUNC0("ncpfs: could not lookup vol %s\n",
				info.volume_name);
			continue;
		}
		entry.volume = entry.i.volNumber;
		if (!FUNC2(filp, dirent, filldir, ctl, &entry))
			return;
	}
}