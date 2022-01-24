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
struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ncp_server*,struct inode*,char*,int /*<<< orphan*/ ,struct inode*,char*) ; 
 int FUNC2 (struct ncp_server*,struct inode*,char*) ; 

int FUNC3(struct ncp_server *server,
				struct inode *old_dir, char *old_name,
				struct inode *new_dir, char *new_name)
{
        int result;
        __le16 old_type = FUNC0(0x06);

/* If somebody can do it atomic, call me... vandrove@vc.cvut.cz */
	result = FUNC1(server, old_dir, old_name, old_type,
	                                   new_dir, new_name);
        if (result == 0xFF)	/* File Not Found, try directory */
	{
		old_type = FUNC0(0x16);
		result = FUNC1(server, old_dir, old_name, old_type,
						   new_dir, new_name);
	}
	if (result != 0x92) return result;	/* All except NO_FILES_RENAMED */
	result = FUNC2(server, new_dir, new_name);
	if (result != 0) return -EACCES;
	result = FUNC1(server, old_dir, old_name, old_type,
					   new_dir, new_name);
	return result;
}