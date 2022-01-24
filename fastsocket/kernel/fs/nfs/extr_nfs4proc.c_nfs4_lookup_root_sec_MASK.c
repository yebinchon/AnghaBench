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
struct rpc_auth {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs_fsinfo {int dummy; } ;
struct nfs_fh {int dummy; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ; 
 struct rpc_auth* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nfs_server *server, struct nfs_fh *fhandle,
				struct nfs_fsinfo *info, rpc_authflavor_t flavor)
{
	struct rpc_auth *auth;
	int ret;

	auth = FUNC1(flavor, server->client);
	if (!auth) {
		ret = -EIO;
		goto out;
	}
	ret = FUNC0(server, fhandle, info);
out:
	return ret;
}