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
struct nfs_server {scalar_t__ namelen; int /*<<< orphan*/  mount_time; TYPE_3__ fsid; TYPE_2__* nfs_client; int /*<<< orphan*/  caps; } ;
struct nfs_parsed_mount_data {int flags; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int valid; int /*<<< orphan*/  fsid; } ;
struct TYPE_5__ {TYPE_1__* rpc_ops; } ;
struct TYPE_4__ {int version; int (* getattr ) (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ;int /*<<< orphan*/  file_inode_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct nfs_server* FUNC1 (int) ; 
 scalar_t__ NFS2_MAXNAMLEN ; 
 scalar_t__ NFS3_MAXNAMLEN ; 
 int NFS_ATTR_FATTR ; 
 int /*<<< orphan*/  NFS_CAP_READDIRPLUS ; 
 int NFS_MOUNT_NORDIRPLUS ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 struct nfs_fattr* FUNC4 () ; 
 struct nfs_server* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_server*) ; 
 int FUNC8 (struct nfs_server*,struct nfs_parsed_mount_data const*) ; 
 int FUNC9 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_server*) ; 
 int FUNC11 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ; 

struct nfs_server *FUNC12(const struct nfs_parsed_mount_data *data,
				     struct nfs_fh *mntfh)
{
	struct nfs_server *server;
	struct nfs_fattr *fattr;
	int error;

	server = FUNC5();
	if (!server)
		return FUNC1(-ENOMEM);

	error = -ENOMEM;
	fattr = FUNC4();
	if (fattr == NULL)
		goto error;

	/* Get a client representation */
	error = FUNC8(server, data);
	if (error < 0)
		goto error;

	FUNC0(!server->nfs_client);
	FUNC0(!server->nfs_client->rpc_ops);
	FUNC0(!server->nfs_client->rpc_ops->file_inode_ops);

	/* Probe the root fh to retrieve its FSID */
	error = FUNC9(server, mntfh, fattr);
	if (error < 0)
		goto error;
	if (server->nfs_client->rpc_ops->version == 3) {
		if (server->namelen == 0 || server->namelen > NFS3_MAXNAMLEN)
			server->namelen = NFS3_MAXNAMLEN;
		if (!(data->flags & NFS_MOUNT_NORDIRPLUS))
			server->caps |= NFS_CAP_READDIRPLUS;
	} else {
		if (server->namelen == 0 || server->namelen > NFS2_MAXNAMLEN)
			server->namelen = NFS2_MAXNAMLEN;
	}

	if (!(fattr->valid & NFS_ATTR_FATTR)) {
		error = server->nfs_client->rpc_ops->getattr(server, mntfh, fattr);
		if (error < 0) {
			FUNC2("nfs_create_server: getattr error = %d\n", -error);
			goto error;
		}
	}
	FUNC3(&server->fsid, &fattr->fsid, sizeof(server->fsid));

	FUNC2("Server FSID: %llx:%llx\n",
		(unsigned long long) server->fsid.major,
		(unsigned long long) server->fsid.minor);

	FUNC10(server);
	server->mount_time = jiffies;
	FUNC6(fattr);
	return server;

error:
	FUNC6(fattr);
	FUNC7(server);
	return FUNC1(error);
}