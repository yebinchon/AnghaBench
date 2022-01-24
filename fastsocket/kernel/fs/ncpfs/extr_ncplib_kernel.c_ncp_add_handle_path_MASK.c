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
 int /*<<< orphan*/  FUNC0 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,char const*) ; 

__attribute__((used)) static void FUNC3(struct ncp_server *server, __u8 vol_num,
				__le32 dir_base, int have_dir_base, 
				const char *path)
{
	FUNC0(server, vol_num);
	FUNC1(server, dir_base);
	if (have_dir_base != 0) {
		FUNC0(server, 1);	/* dir_base */
	} else {
		FUNC0(server, 0xff);	/* no handle */
	}
	if (path != NULL) {
		FUNC0(server, 1);	/* 1 component */
		FUNC2(server, path);
	} else {
		FUNC0(server, 0);
	}
}