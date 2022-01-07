
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pageio_descriptor {struct nfs_direct_req* pg_dreq; } ;
struct nfs_direct_req {struct inode* inode; } ;
struct iovec {size_t iov_len; } ;
struct inode {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef size_t loff_t ;
struct TYPE_2__ {int (* write_pageio_init ) (struct nfs_pageio_descriptor*,struct inode*,int ,int *) ;} ;


 scalar_t__ EIO ;
 int FLUSH_COND_STABLE ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int get_dreq (struct nfs_direct_req*) ;
 int nfs_direct_req_release (struct nfs_direct_req*) ;
 int nfs_direct_write_complete (struct nfs_direct_req*,struct inode*) ;
 int nfs_direct_write_completion_ops ;
 scalar_t__ nfs_direct_write_schedule_segment (struct nfs_pageio_descriptor*,struct iovec const*,size_t) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 scalar_t__ put_dreq (struct nfs_direct_req*) ;
 int stub1 (struct nfs_pageio_descriptor*,struct inode*,int ,int *) ;

__attribute__((used)) static ssize_t nfs_direct_write_schedule_iovec(struct nfs_direct_req *dreq,
            const struct iovec *iov,
            unsigned long nr_segs,
            loff_t pos)
{
 struct nfs_pageio_descriptor desc;
 struct inode *inode = dreq->inode;
 ssize_t result = 0;
 size_t requested_bytes = 0;
 unsigned long seg;

 NFS_PROTO(inode)->write_pageio_init(&desc, inode, FLUSH_COND_STABLE,
         &nfs_direct_write_completion_ops);
 desc.pg_dreq = dreq;
 get_dreq(dreq);

 for (seg = 0; seg < nr_segs; seg++) {
  const struct iovec *vec = &iov[seg];
  result = nfs_direct_write_schedule_segment(&desc, vec, pos);
  if (result < 0)
   break;
  requested_bytes += result;
  if ((size_t)result < vec->iov_len)
   break;
  pos += vec->iov_len;
 }
 nfs_pageio_complete(&desc);





 if (requested_bytes == 0) {
  nfs_direct_req_release(dreq);
  return result < 0 ? result : -EIO;
 }

 if (put_dreq(dreq))
  nfs_direct_write_complete(dreq, dreq->inode);
 return 0;
}
