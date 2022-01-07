
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int ra_pages; } ;
struct nfs_server {int rsize; int wsize; int rpages; int wpages; int dtsize; int flags; int client; int time_delta; int maxfilesize; scalar_t__ acdirmax; scalar_t__ acdirmin; scalar_t__ acregmax; scalar_t__ acregmin; int wtmult; TYPE_1__ backing_dev_info; } ;
struct nfs_fsinfo {int rtpref; int wtpref; int rtmax; int wtmax; int dtpref; int time_delta; int maxfilesize; int wtmult; int layouttype; } ;
struct nfs_fh {int dummy; } ;


 void* NFS_MAX_FILE_IO_SIZE ;
 int NFS_MAX_READAHEAD ;
 int NFS_MAX_READDIR_PAGES ;
 int NFS_MOUNT_NOAC ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int nfs_block_bits (int ,int *) ;
 void* nfs_block_size (int,int *) ;
 int rpc_max_payload (int ) ;
 int rpc_setbufsize (int ,int,int) ;
 int set_pnfs_layoutdriver (struct nfs_server*,struct nfs_fh*,int ) ;

__attribute__((used)) static void nfs_server_set_fsinfo(struct nfs_server *server,
      struct nfs_fh *mntfh,
      struct nfs_fsinfo *fsinfo)
{
 unsigned long max_rpc_payload;


 if (server->rsize == 0)
  server->rsize = nfs_block_size(fsinfo->rtpref, ((void*)0));
 if (server->wsize == 0)
  server->wsize = nfs_block_size(fsinfo->wtpref, ((void*)0));

 if (fsinfo->rtmax >= 512 && server->rsize > fsinfo->rtmax)
  server->rsize = nfs_block_size(fsinfo->rtmax, ((void*)0));
 if (fsinfo->wtmax >= 512 && server->wsize > fsinfo->wtmax)
  server->wsize = nfs_block_size(fsinfo->wtmax, ((void*)0));

 max_rpc_payload = nfs_block_size(rpc_max_payload(server->client), ((void*)0));
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
 set_pnfs_layoutdriver(server, mntfh, fsinfo->layouttype);

 server->wtmult = nfs_block_bits(fsinfo->wtmult, ((void*)0));

 server->dtsize = nfs_block_size(fsinfo->dtpref, ((void*)0));
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


 rpc_setbufsize(server->client, server->wsize + 100, server->rsize + 100);
}
