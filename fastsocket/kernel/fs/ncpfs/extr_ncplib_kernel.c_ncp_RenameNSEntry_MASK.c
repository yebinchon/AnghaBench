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
struct ncp_server {int* name_space; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {size_t volNumber; int /*<<< orphan*/  dirEntNum; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*) ; 
 int FUNC6 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp_server*) ; 

__attribute__((used)) static int
FUNC8(struct ncp_server *server,
		  struct inode *old_dir, char *old_name, __le16 old_type,
		  struct inode *new_dir, char *new_name)
{
	int result = -EINVAL;

	if ((old_dir == NULL) || (old_name == NULL) ||
	    (new_dir == NULL) || (new_name == NULL))
		goto out;

	FUNC5(server);
	FUNC1(server, 4);	/* subfunction */
	FUNC1(server, server->name_space[FUNC0(old_dir)->volNumber]);
	FUNC1(server, 1);	/* rename flag */
	FUNC4(server, old_type);	/* search attributes */

	/* source Handle Path */
	FUNC1(server, FUNC0(old_dir)->volNumber);
	FUNC2(server, FUNC0(old_dir)->dirEntNum);
	FUNC1(server, 1);
	FUNC1(server, 1);	/* 1 source component */

	/* dest Handle Path */
	FUNC1(server, FUNC0(new_dir)->volNumber);
	FUNC2(server, FUNC0(new_dir)->dirEntNum);
	FUNC1(server, 1);
	FUNC1(server, 1);	/* 1 destination component */

	/* source path string */
	FUNC3(server, old_name);
	/* dest path string */
	FUNC3(server, new_name);

	result = FUNC6(server, 87);
	FUNC7(server);
out:
	return result;
}