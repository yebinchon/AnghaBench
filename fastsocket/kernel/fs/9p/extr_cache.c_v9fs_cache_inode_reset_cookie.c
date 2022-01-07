
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int fscache; } ;
struct v9fs_cookie {int lock; struct fscache_cookie* fscache; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,struct inode*,struct fscache_cookie*,struct fscache_cookie*) ;
 struct fscache_cookie* fscache_acquire_cookie (int ,int *,struct v9fs_cookie*) ;
 int fscache_relinquish_cookie (struct fscache_cookie*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v9fs_cache_inode_index_def ;
 struct v9fs_cookie* v9fs_inode2cookie (struct inode*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

void v9fs_cache_inode_reset_cookie(struct inode *inode)
{
 struct v9fs_cookie *vcookie = v9fs_inode2cookie(inode);
 struct v9fs_session_info *v9ses;
 struct fscache_cookie *old;

 if (!vcookie->fscache)
  return;

 old = vcookie->fscache;

 spin_lock(&vcookie->lock);
 fscache_relinquish_cookie(vcookie->fscache, 1);

 v9ses = v9fs_inode2v9ses(inode);
 vcookie->fscache = fscache_acquire_cookie(v9ses->fscache,
        &v9fs_cache_inode_index_def,
        vcookie);

 P9_DPRINTK(P9_DEBUG_FSC, "inode %p revalidating cookie old %p new %p",
     inode, old, vcookie->fscache);

 spin_unlock(&vcookie->lock);
}
