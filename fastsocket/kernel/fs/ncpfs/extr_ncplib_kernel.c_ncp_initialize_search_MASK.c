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
struct nw_search_sequence {int dummy; } ;
struct ncp_server {int* name_space; } ;
struct inode {int dummy; } ;
typedef  size_t __u8 ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {size_t volNumber; int /*<<< orphan*/  dirEntNum; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nw_search_sequence*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp_server*) ; 

int
FUNC8(struct ncp_server *server, struct inode *dir,
			struct nw_search_sequence *target)
{
	__u8  volnum = FUNC0(dir)->volNumber;
	__le32 dirent = FUNC0(dir)->dirEntNum;
	int result;

	FUNC4(server);
	FUNC2(server, 2);	/* subfunction */
	FUNC2(server, server->name_space[volnum]);
	FUNC2(server, 0);	/* reserved */
	FUNC3(server, volnum, dirent, 1, NULL);

	result = FUNC6(server, 87);
	if (result)
		goto out;
	FUNC1(target, FUNC5(server, 0), sizeof(*target));

out:
	FUNC7(server);
	return result;
}