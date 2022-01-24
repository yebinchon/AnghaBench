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
struct nw_modify_dos_info {int dummy; } ;
struct ncp_server {int* name_space; } ;
struct inode {int dummy; } ;
typedef  size_t __u8 ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {size_t volNumber; int /*<<< orphan*/  dirEntNum; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,size_t,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*,struct nw_modify_dos_info const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp_server*) ; 
 int FUNC8 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ncp_server*) ; 

int FUNC10(struct ncp_server *server,
					    struct inode *dir,
					    const char *path,
					    __le32 info_mask,
					    const struct nw_modify_dos_info *info)
{
	__u8  volnum = FUNC0(dir)->volNumber;
	__le32 dirent = FUNC0(dir)->dirEntNum;
	int result;

	FUNC7(server);
	FUNC2(server, 7);	/* subfunction */
	FUNC2(server, server->name_space[volnum]);
	FUNC2(server, 0);	/* reserved */
	FUNC6(server, FUNC1(0x8006));	/* search attribs: all */

	FUNC3(server, info_mask);
	FUNC5(server, info, sizeof(*info));
	FUNC4(server, volnum, dirent, 1, path);

	result = FUNC8(server, 87);
	FUNC9(server);
	return result;
}