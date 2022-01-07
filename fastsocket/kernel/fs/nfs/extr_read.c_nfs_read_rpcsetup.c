
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int count; scalar_t__ eof; int * fattr; } ;
struct TYPE_7__ {unsigned int count; int lock_context; int context; int pages; scalar_t__ pgbase; scalar_t__ offset; int fh; } ;
struct TYPE_6__ {int pagevec; } ;
struct nfs_read_data {int fattr; TYPE_4__ res; TYPE_3__ args; TYPE_2__ pages; TYPE_1__* header; } ;
struct nfs_page {int wb_lock_context; int wb_context; scalar_t__ wb_pgbase; } ;
struct TYPE_5__ {int inode; struct nfs_page* req; } ;


 int NFS_FH (int ) ;
 int get_nfs_open_context (int ) ;
 int nfs_fattr_init (int *) ;
 scalar_t__ req_offset (struct nfs_page*) ;

__attribute__((used)) static void nfs_read_rpcsetup(struct nfs_read_data *data,
  unsigned int count, unsigned int offset)
{
 struct nfs_page *req = data->header->req;

 data->args.fh = NFS_FH(data->header->inode);
 data->args.offset = req_offset(req) + offset;
 data->args.pgbase = req->wb_pgbase + offset;
 data->args.pages = data->pages.pagevec;
 data->args.count = count;
 data->args.context = get_nfs_open_context(req->wb_context);
 data->args.lock_context = req->wb_lock_context;

 data->res.fattr = &data->fattr;
 data->res.count = count;
 data->res.eof = 0;
 nfs_fattr_init(&data->fattr);
}
