
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int count; int * verf; int * fattr; } ;
struct TYPE_7__ {unsigned int count; int stable; int lock_context; int context; int pages; scalar_t__ pgbase; scalar_t__ offset; int fh; } ;
struct TYPE_6__ {int pagevec; } ;
struct nfs_write_data {int fattr; int verf; TYPE_4__ res; TYPE_3__ args; TYPE_2__ pages; scalar_t__ mds_offset; TYPE_1__* header; } ;
struct nfs_page {int wb_lock_context; int wb_context; scalar_t__ wb_pgbase; } ;
struct nfs_commit_info {int dummy; } ;
struct TYPE_5__ {int inode; struct nfs_page* req; } ;



 int FLUSH_STABLE ;
 int NFS_FH (int ) ;
 int NFS_FILE_SYNC ;
 int NFS_UNSTABLE ;
 int get_nfs_open_context (int ) ;
 int nfs_fattr_init (int *) ;
 int nfs_reqs_to_commit (struct nfs_commit_info*) ;
 scalar_t__ req_offset (struct nfs_page*) ;

__attribute__((used)) static void nfs_write_rpcsetup(struct nfs_write_data *data,
  unsigned int count, unsigned int offset,
  int how, struct nfs_commit_info *cinfo)
{
 struct nfs_page *req = data->header->req;




 data->args.fh = NFS_FH(data->header->inode);
 data->args.offset = req_offset(req) + offset;

 data->mds_offset = data->args.offset;
 data->args.pgbase = req->wb_pgbase + offset;
 data->args.pages = data->pages.pagevec;
 data->args.count = count;
 data->args.context = get_nfs_open_context(req->wb_context);
 data->args.lock_context = req->wb_lock_context;
 data->args.stable = NFS_UNSTABLE;
 switch (how & (FLUSH_STABLE | 128)) {
 case 0:
  break;
 case 128:
  if (nfs_reqs_to_commit(cinfo))
   break;
 default:
  data->args.stable = NFS_FILE_SYNC;
 }

 data->res.fattr = &data->fattr;
 data->res.count = count;
 data->res.verf = &data->verf;
 nfs_fattr_init(&data->fattr);
}
