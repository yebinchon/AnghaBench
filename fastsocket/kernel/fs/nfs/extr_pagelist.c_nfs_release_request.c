
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_kref; } ;


 int kref_put (int *,int ) ;
 int nfs_free_request ;

void nfs_release_request(struct nfs_page *req)
{
 kref_put(&req->wb_kref, nfs_free_request);
}
