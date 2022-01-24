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
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int NW_NS_DOS ; 
 int /*<<< orphan*/  FUNC0 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*) ; 

int FUNC7(struct ncp_server* server, __u8 volnum, __le32 dirent,
			__u8* dirhandle) {
	int result;

	FUNC3(server);
	FUNC0(server, 12);		/* subfunction */
	FUNC0(server, NW_NS_DOS);
	FUNC0(server, 0);
	FUNC2(server, 0);
	FUNC1(server, volnum, dirent, 1, NULL);
	if ((result = FUNC5(server, 87)) == 0) {
		*dirhandle = FUNC4(server, 0);
	}
	FUNC6(server);
	return result;
}