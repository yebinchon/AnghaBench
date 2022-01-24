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
struct super_block {struct dentry* s_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  mounted_vol; } ;
struct ncp_server {TYPE_1__ m; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __name ;
typedef  void* __le32 ;
struct TYPE_4__ {void* DosDirNum; void* dirEntNum; int /*<<< orphan*/  volNumber; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOENT ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NCP_MAXPATHLEN ; 
 struct ncp_server* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ncp_server*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,void**) ; 
 int FUNC5 (struct ncp_server*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct super_block *sb)
{
	struct ncp_server* server = FUNC2(sb);
	int result;

	if (FUNC6(server)) {
		int len;
		struct dentry* dent;
		__u32 volNumber;
		__le32 dirEntNum;
		__le32 DosDirNum;
		__u8 __name[NCP_MAXPATHLEN + 1];

		len = sizeof(__name);
		result = FUNC5(server, __name, &len, server->m.mounted_vol,
				    FUNC7(server->m.mounted_vol), 1);
		if (result)
			goto out;
		result = -ENOENT;
		if (FUNC4(server, __name, &volNumber, &dirEntNum, &DosDirNum)) {
			FUNC3("ncp_conn_logged_in: %s not found\n",
				server->m.mounted_vol);
			goto out;
		}
		dent = sb->s_root;
		if (dent) {
			struct inode* ino = dent->d_inode;
			if (ino) {
				FUNC1(ino)->volNumber = volNumber;
				FUNC1(ino)->dirEntNum = dirEntNum;
				FUNC1(ino)->DosDirNum = DosDirNum;
			} else {
				FUNC0("ncpfs: sb->s_root->d_inode == NULL!\n");
			}
		} else {
			FUNC0("ncpfs: sb->s_root == NULL!\n");
		}
	}
	result = 0;

out:
	return result;
}