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
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*) ; 
 int FUNC4 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*) ; 

__attribute__((used)) static int
FUNC6(struct ncp_server *server,
		  __u8 have_dir_base, __u8 volnum, __le32 dirent,
		  char* name, __u8 ns, __le16 attr)
{
	int result;

	FUNC3(server);
	FUNC0(server, 8);	/* subfunction */
	FUNC0(server, ns);
	FUNC0(server, 0);	/* reserved */
	FUNC2(server, attr);	/* search attribs: all */
	FUNC1(server, volnum, dirent, have_dir_base, name);

	result = FUNC4(server, 87);
	FUNC5(server);
	return result;
}