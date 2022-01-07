
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int dummy; } ;


 int GFP_NOFS ;
 struct nfs_fattr* kmalloc (int,int ) ;
 int nfs_fattr_init (struct nfs_fattr*) ;

struct nfs_fattr *nfs_alloc_fattr(void)
{
 struct nfs_fattr *fattr;

 fattr = kmalloc(sizeof(*fattr), GFP_NOFS);
 if (fattr != ((void*)0))
  nfs_fattr_init(fattr);
 return fattr;
}
