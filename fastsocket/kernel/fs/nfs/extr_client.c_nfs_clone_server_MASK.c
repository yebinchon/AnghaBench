#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ minor; scalar_t__ major; } ;
struct nfs_server {scalar_t__ namelen; int /*<<< orphan*/  mount_time; TYPE_3__ fsid; int /*<<< orphan*/  client_acl; TYPE_2__* client; TYPE_1__* nfs_client; int /*<<< orphan*/  destroy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {TYPE_3__ fsid; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;
struct TYPE_5__ {int /*<<< orphan*/  cl_timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  cl_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfs_server* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFS4_MAXNAMLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  jiffies ; 
 struct nfs_fattr* FUNC4 () ; 
 struct nfs_server* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_server*) ; 
 int FUNC9 (struct nfs_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_server*,struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_server*) ; 
 int FUNC13 (struct nfs_server*) ; 

struct nfs_server *FUNC14(struct nfs_server *source,
				    struct nfs_fh *fh,
				    struct nfs_fattr *fattr,
				    rpc_authflavor_t flavor)
{
	struct nfs_server *server;
	struct nfs_fattr *fattr_fsinfo;
	int error;

	FUNC3("--> nfs_clone_server(,%llx:%llx,)\n",
		(unsigned long long) fattr->fsid.major,
		(unsigned long long) fattr->fsid.minor);

	server = FUNC5();
	if (!server)
		return FUNC0(-ENOMEM);

	error = -ENOMEM;
	fattr_fsinfo = FUNC4();
	if (fattr_fsinfo == NULL)
		goto out_free_server;

	/* Copy data from the source */
	server->nfs_client = source->nfs_client;
	server->destroy = source->destroy;
	FUNC2(&server->nfs_client->cl_count);
	FUNC11(server, source);

	server->fsid = fattr->fsid;

	error = FUNC9(server,
			source->client->cl_timeout,
			flavor);
	if (error < 0)
		goto out_free_server;
	if (!FUNC1(source->client_acl))
		FUNC8(server);

	/* probe the filesystem info for this server filesystem */
	error = FUNC10(server, fh, fattr_fsinfo);
	if (error < 0)
		goto out_free_server;

	if (server->namelen == 0 || server->namelen > NFS4_MAXNAMLEN)
		server->namelen = NFS4_MAXNAMLEN;

	FUNC3("Cloned FSID: %llx:%llx\n",
		(unsigned long long) server->fsid.major,
		(unsigned long long) server->fsid.minor);

	error = FUNC13(server);
	if (error < 0)
		goto out_free_server;

	FUNC12(server);
	server->mount_time = jiffies;

	FUNC6(fattr_fsinfo);
	FUNC3("<-- nfs_clone_server() = %p\n", server);
	return server;

out_free_server:
	FUNC6(fattr_fsinfo);
	FUNC7(server);
	FUNC3("<-- nfs_clone_server() = error %d\n", error);
	return FUNC0(error);
}