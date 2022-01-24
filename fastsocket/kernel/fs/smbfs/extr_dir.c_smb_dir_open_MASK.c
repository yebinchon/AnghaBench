#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ protocol; } ;
struct smb_sb_info {scalar_t__ state; TYPE_4__ opt; } ;
struct inode {int dummy; } ;
struct TYPE_11__ {struct dentry* dentry; } ;
struct file {TYPE_5__ f_path; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_12__ {unsigned long oldmtime; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 scalar_t__ CONN_VALID ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 scalar_t__ SMB_PROTOCOL_LANMAN2 ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct smb_sb_info* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int
FUNC8(struct inode *dir, struct file *file)
{
	struct dentry *dentry = file->f_path.dentry;
	struct smb_sb_info *server;
	int error = 0;

	FUNC2("(%s/%s)\n", dentry->d_parent->d_name.name,
		file->f_path.dentry->d_name.name);

	/*
	 * Directory timestamps in the core protocol aren't updated
	 * when a file is added, so we give them a very short TTL.
	 */
	FUNC3();
	server = FUNC4(dentry);
	if (server->opt.protocol < SMB_PROTOCOL_LANMAN2) {
		unsigned long age = jiffies - FUNC1(dir)->oldmtime;
		if (age > 2*HZ)
			FUNC5(dir);
	}

	/*
	 * Note: in order to allow the smbmount process to open the
	 * mount point, we only revalidate if the connection is valid or
	 * if the process is trying to access something other than the root.
	 */
	if (server->state == CONN_VALID || !FUNC0(dentry))
		error = FUNC6(dentry);
	FUNC7();
	return error;
}