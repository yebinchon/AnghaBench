
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int completion; scalar_t__ iocb; scalar_t__ count; scalar_t__ error; } ;


 int aio_complete (scalar_t__,long,int ) ;
 int complete_all (int *) ;
 int nfs_direct_req_release (struct nfs_direct_req*) ;

__attribute__((used)) static void nfs_direct_complete(struct nfs_direct_req *dreq)
{
 if (dreq->iocb) {
  long res = (long) dreq->error;
  if (!res)
   res = (long) dreq->count;
  aio_complete(dreq->iocb, res, 0);
 }
 complete_all(&dreq->completion);

 nfs_direct_req_release(dreq);
}
