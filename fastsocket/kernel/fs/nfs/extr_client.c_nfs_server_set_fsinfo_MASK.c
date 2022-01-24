#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int ra_pages; } ;
struct nfs_server {int rsize; int wsize; int rpages; int wpages; int dtsize; int flags; int /*<<< orphan*/  client; int /*<<< orphan*/  time_delta; int /*<<< orphan*/  maxfilesize; scalar_t__ acdirmax; scalar_t__ acdirmin; scalar_t__ acregmax; scalar_t__ acregmin; int /*<<< orphan*/  wtmult; TYPE_1__ backing_dev_info; } ;
struct nfs_fsinfo {int rtpref; int wtpref; int rtmax; int wtmax; int dtpref; int /*<<< orphan*/  time_delta; int /*<<< orphan*/  maxfilesize; int /*<<< orphan*/  wtmult; int /*<<< orphan*/  layouttype; } ;
struct nfs_fh {int dummy; } ;

/* Variables and functions */
 void* NFS_MAX_FILE_IO_SIZE ; 
 int NFS_MAX_READAHEAD ; 
 int NFS_MAX_READDIR_PAGES ; 
 int NFS_MOUNT_NOAC ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*,struct nfs_fh*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nfs_server *server,
				  struct nfs_fh *mntfh,
				  struct nfs_fsinfo *fsinfo)
{
	unsigned long max_rpc_payload;

	/* Work out a lot of parameters */
	if (server->rsize == 0)
		server->rsize = FUNC1(fsinfo->rtpref, NULL);
	if (server->wsize == 0)
		server->wsize = FUNC1(fsinfo->wtpref, NULL);

	if (fsinfo->rtmax >= 512 && server->rsize > fsinfo->rtmax)
		server->rsize = FUNC1(fsinfo->rtmax, NULL);
	if (fsinfo->wtmax >= 512 && server->wsize > fsinfo->wtmax)
		server->wsize = FUNC1(fsinfo->wtmax, NULL);

	max_rpc_payload = FUNC1(FUNC2(server->client), NULL);
	if (server->rsize > max_rpc_payload)
		server->rsize = max_rpc_payload;
	if (server->rsize > NFS_MAX_FILE_IO_SIZE)
		server->rsize = NFS_MAX_FILE_IO_SIZE;
	server->rpages = (server->rsize + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;

	server->backing_dev_info.name = "nfs";
	server->backing_dev_info.ra_pages = server->rpages * NFS_MAX_READAHEAD;

	if (server->wsize > max_rpc_payload)
		server->wsize = max_rpc_payload;
	if (server->wsize > NFS_MAX_FILE_IO_SIZE)
		server->wsize = NFS_MAX_FILE_IO_SIZE;
	server->wpages = (server->wsize + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
	FUNC4(server, mntfh, fsinfo->layouttype);

	server->wtmult = FUNC0(fsinfo->wtmult, NULL);

	server->dtsize = FUNC1(fsinfo->dtpref, NULL);
	if (server->dtsize > PAGE_CACHE_SIZE * NFS_MAX_READDIR_PAGES)
		server->dtsize = PAGE_CACHE_SIZE * NFS_MAX_READDIR_PAGES;
	if (server->dtsize > server->rsize)
		server->dtsize = server->rsize;

	if (server->flags & NFS_MOUNT_NOAC) {
		server->acregmin = server->acregmax = 0;
		server->acdirmin = server->acdirmax = 0;
	}

	server->maxfilesize = fsinfo->maxfilesize;

	server->time_delta = fsinfo->time_delta;

	/* We're airborne Set socket buffersize */
	FUNC3(server->client, server->wsize + 100, server->rsize + 100);
}