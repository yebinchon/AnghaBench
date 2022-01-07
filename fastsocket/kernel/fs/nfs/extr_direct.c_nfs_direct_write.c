
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_lock_context {int dummy; } ;
struct nfs_direct_req {struct kiocb* iocb; struct nfs_lock_context* l_ctx; int ctx; struct inode* inode; } ;
struct kiocb {TYPE_2__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {struct inode* host; } ;


 scalar_t__ ENOMEM ;
 scalar_t__ IS_ERR (struct nfs_lock_context*) ;
 scalar_t__ PTR_ERR (struct nfs_lock_context*) ;
 int get_nfs_open_context (int ) ;
 int is_sync_kiocb (struct kiocb*) ;
 struct nfs_direct_req* nfs_direct_req_alloc () ;
 int nfs_direct_req_release (struct nfs_direct_req*) ;
 scalar_t__ nfs_direct_wait (struct nfs_direct_req*) ;
 scalar_t__ nfs_direct_write_schedule_iovec (struct nfs_direct_req*,struct iovec const*,unsigned long,int ) ;
 int nfs_file_open_context (TYPE_2__*) ;
 struct nfs_lock_context* nfs_get_lock_context (int ) ;

__attribute__((used)) static ssize_t nfs_direct_write(struct kiocb *iocb, const struct iovec *iov,
    unsigned long nr_segs, loff_t pos,
    size_t count)
{
 ssize_t result = -ENOMEM;
 struct inode *inode = iocb->ki_filp->f_mapping->host;
 struct nfs_direct_req *dreq;
 struct nfs_lock_context *l_ctx;

 dreq = nfs_direct_req_alloc();
 if (!dreq)
  goto out;

 dreq->inode = inode;
 dreq->ctx = get_nfs_open_context(nfs_file_open_context(iocb->ki_filp));
 l_ctx = nfs_get_lock_context(dreq->ctx);
 if (IS_ERR(l_ctx)) {
  result = PTR_ERR(l_ctx);
  goto out_release;
 }
 dreq->l_ctx = l_ctx;
 if (!is_sync_kiocb(iocb))
  dreq->iocb = iocb;

 result = nfs_direct_write_schedule_iovec(dreq, iov, nr_segs, pos);
 if (!result)
  result = nfs_direct_wait(dreq);
out_release:
 nfs_direct_req_release(dreq);
out:
 return result;
}
