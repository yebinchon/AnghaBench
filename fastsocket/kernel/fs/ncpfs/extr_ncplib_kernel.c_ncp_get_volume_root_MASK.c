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
struct ncp_server {int /*<<< orphan*/ * name_space; } ;
typedef  size_t __u8 ;
typedef  size_t __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*) ; 
 size_t FUNC6 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp_server*,int) ; 
 int FUNC8 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ncp_server*) ; 

int 
FUNC10(struct ncp_server *server, const char *volname,
		    __u32* volume, __le32* dirent, __le32* dosdirent)
{
	int result;
	__u8 volnum;

	FUNC0("ncp_get_volume_root: looking up vol %s\n", volname);

	FUNC5(server);
	FUNC1(server, 22);	/* Subfunction: Generate dir handle */
	FUNC1(server, 0);	/* DOS namespace */
	FUNC1(server, 0);	/* reserved */
	FUNC1(server, 0);	/* reserved */
	FUNC1(server, 0);	/* reserved */

	FUNC1(server, 0);	/* faked volume number */
	FUNC2(server, 0);	/* faked dir_base */
	FUNC1(server, 0xff);	/* Don't have a dir_base */
	FUNC1(server, 1);	/* 1 path component */
	FUNC3(server, volname);

	if ((result = FUNC8(server, 87)) != 0) {
		FUNC9(server);
		return result;
	}
	*dirent = *dosdirent = FUNC7(server, 4);
	volnum = FUNC6(server, 8);
	FUNC9(server);
	*volume = volnum;

	server->name_space[volnum] = FUNC4(server, volnum);

	FUNC0("lookup_vol: namespace[%d] = %d\n",
		volnum, server->name_space[volnum]);

	return 0;
}