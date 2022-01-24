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
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  RIM_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,int,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*,int) ; 
 int FUNC7 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ncp_server*) ; 

__attribute__((used)) static int
FUNC9(struct ncp_server *server,
		__u8 nsSrc, __u8 nsDst, __u8 vol_num, __le32 dir_base,
		char *path, /* At most 1 component */
		__le32 *dirEntNum, __le32 *DosDirNum)
{
	int result;

	FUNC5(server);
	FUNC1(server, 6); /* subfunction */
	FUNC1(server, nsSrc);
	FUNC1(server, nsDst);
	FUNC4(server, FUNC0(0x8006)); /* get all */
	FUNC2(server, RIM_ALL);
	FUNC3(server, vol_num, dir_base, 1, path);

	if ((result = FUNC7(server, 87)) != 0)
	{
		FUNC8(server);
		return result;
	}

	if (dirEntNum)
		*dirEntNum = FUNC6(server, 0x30);
	if (DosDirNum)
		*DosDirNum = FUNC6(server, 0x34);
	FUNC8(server);
	return 0;
}