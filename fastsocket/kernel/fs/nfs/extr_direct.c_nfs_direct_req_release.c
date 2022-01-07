
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int kref; } ;


 int kref_put (int *,int ) ;
 int nfs_direct_req_free ;

__attribute__((used)) static void nfs_direct_req_release(struct nfs_direct_req *dreq)
{
 kref_put(&dreq->kref, nfs_direct_req_free);
}
