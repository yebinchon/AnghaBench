
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_data {int pages; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 struct nfs_commit_data* mempool_alloc (int ,int ) ;
 int memset (struct nfs_commit_data*,int ,int) ;
 int nfs_commit_mempool ;

struct nfs_commit_data *nfs_commitdata_alloc(void)
{
 struct nfs_commit_data *p = mempool_alloc(nfs_commit_mempool, GFP_NOFS);

 if (p) {
  memset(p, 0, sizeof(*p));
  INIT_LIST_HEAD(&p->pages);
 }
 return p;
}
