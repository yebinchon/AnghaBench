
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_data {int dummy; } ;


 int mempool_free (struct nfs_commit_data*,int ) ;
 int nfs_commit_mempool ;

void nfs_commit_free(struct nfs_commit_data *p)
{
 mempool_free(p, nfs_commit_mempool);
}
