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
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct TYPE_6__ {scalar_t__ version; int /*<<< orphan*/  port; int /*<<< orphan*/  addrlen; TYPE_1__ address; scalar_t__ hostname; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  address; scalar_t__ hostname; int /*<<< orphan*/  export_path; } ;
struct nfs_parsed_mount_data {int flags; int version; TYPE_3__ mount_server; TYPE_2__ nfs_server; } ;
struct nfs_mount_request {int noresvport; unsigned int* auth_flav_len; scalar_t__ version; scalar_t__ hostname; struct sockaddr* sap; int /*<<< orphan*/  salen; int /*<<< orphan*/ * auth_flavs; struct nfs_fh* fh; int /*<<< orphan*/  protocol; int /*<<< orphan*/  dirpath; } ;
struct nfs_fh {int dummy; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MOUNT ; 
 int NFS_MAX_SECFLAVORS ; 
 scalar_t__ NFS_MNT3_VERSION ; 
 scalar_t__ NFS_MNT_VERSION ; 
 int NFS_MOUNT_NORESVPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfs_mount_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nfs_parsed_mount_data*,struct nfs_mount_request*) ; 

__attribute__((used)) static int FUNC6(struct nfs_parsed_mount_data *args,
			 struct nfs_fh *root_fh)
{
	rpc_authflavor_t server_authlist[NFS_MAX_SECFLAVORS];
	unsigned int server_authlist_len = FUNC0(server_authlist);
	struct nfs_mount_request request = {
		.sap		= (struct sockaddr *)
						&args->mount_server.address,
		.dirpath	= args->nfs_server.export_path,
		.protocol	= args->mount_server.protocol,
		.fh		= root_fh,
		.noresvport	= args->flags & NFS_MOUNT_NORESVPORT,
		.auth_flav_len	= &server_authlist_len,
		.auth_flavs	= server_authlist,
	};
	int status;

	if (args->mount_server.version == 0) {
		switch (args->version) {
			default:
				args->mount_server.version = NFS_MNT3_VERSION;
				break;
			case 2:
				args->mount_server.version = NFS_MNT_VERSION;
		}
	}
	request.version = args->mount_server.version;

	if (args->mount_server.hostname)
		request.hostname = args->mount_server.hostname;
	else
		request.hostname = args->nfs_server.hostname;

	/*
	 * Construct the mount server's address.
	 */
	if (args->mount_server.address.ss_family == AF_UNSPEC) {
		FUNC2(request.sap, &args->nfs_server.address,
		       args->nfs_server.addrlen);
		args->mount_server.addrlen = args->nfs_server.addrlen;
	}
	request.salen = args->mount_server.addrlen;
	FUNC4(request.sap, &args->mount_server.port, 0);

	/*
	 * Now ask the mount server to map our export path
	 * to a file handle.
	 */
	status = FUNC3(&request);
	if (status != 0) {
		FUNC1(MOUNT, "NFS: unable to mount server %s, error %d\n",
				request.hostname, status);
		return status;
	}

	/*
	 * MNTv1 (NFSv2) does not support auth flavor negotiation.
	 */
	if (args->mount_server.version != NFS_MNT3_VERSION)
		return 0;
	return FUNC5(args, &request);
}