#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ncp_server {int* name_space; } ;
struct TYPE_4__ {int /*<<< orphan*/  volNumber; } ;
struct ncp_entry_info {int opened; TYPE_1__ i; int /*<<< orphan*/  file_handle; int /*<<< orphan*/  volume; } ;
struct inode {int dummy; } ;
typedef  size_t __u8 ;
typedef  int __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {size_t volNumber; int dirEntNum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int RIM_ALL ; 
 int aDIR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*,size_t,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC9 (struct ncp_server*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ncp_server*,int) ; 
 int FUNC12 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ncp_server*) ; 

int FUNC14(struct ncp_server *server,
				   struct inode *dir, char *name,
				   int open_create_mode,
				   __le32 create_attributes,
				   __le16 desired_acc_rights,
				   struct ncp_entry_info *target)
{
	__le16 search_attribs = FUNC2(0x0006);
	__u8  volnum;
	__le32 dirent;
	int result;

	volnum = FUNC1(dir)->volNumber;
	dirent = FUNC1(dir)->dirEntNum;

	if ((create_attributes & aDIR) != 0) {
		search_attribs |= FUNC2(0x8000);
	}
	FUNC8(server);
	FUNC3(server, 1);	/* subfunction */
	FUNC3(server, server->name_space[volnum]);
	FUNC3(server, open_create_mode);
	FUNC6(server, search_attribs);
	FUNC4(server, RIM_ALL);
	FUNC4(server, create_attributes);
	/* The desired acc rights seem to be the inherited rights mask
	   for directories */
	FUNC6(server, desired_acc_rights);
	FUNC5(server, volnum, dirent, 1, name);

	if ((result = FUNC12(server, 87)) != 0)
		goto out;
	if (!(create_attributes & aDIR))
		target->opened = 1;

	/* in target there's a new finfo to fill */
	FUNC7(FUNC10(server, 6), &(target->i));
	target->volume = target->i.volNumber;
	FUNC0(FUNC11(server, 0),
			     FUNC11(server, 2),
			     target->file_handle);
	
	FUNC13(server);

	(void)FUNC9(server, &(target->i));
	return 0;

out:
	FUNC13(server);
	return result;
}