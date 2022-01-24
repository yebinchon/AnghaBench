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
struct nw_modify_dos_info {int dummy; } ;
struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (struct ncp_server*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nw_modify_dos_info const*) ; 

int FUNC1(struct ncp_server *server,
				       struct inode *dir,
				       __le32 info_mask,
				       const struct nw_modify_dos_info *info)
{
	return FUNC0(server, dir, NULL,
		info_mask, info);
}