
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_cookie {int * fscache; } ;
struct inode {int dummy; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,struct inode*,int *) ;
 int fscache_relinquish_cookie (int *,int) ;
 struct v9fs_cookie* v9fs_inode2cookie (struct inode*) ;

void v9fs_cache_inode_flush_cookie(struct inode *inode)
{
 struct v9fs_cookie *vcookie = v9fs_inode2cookie(inode);

 if (!vcookie->fscache)
  return;
 P9_DPRINTK(P9_DEBUG_FSC, "inode %p flush cookie %p", inode,
     vcookie->fscache);

 fscache_relinquish_cookie(vcookie->fscache, 1);
 vcookie->fscache = ((void*)0);
}
