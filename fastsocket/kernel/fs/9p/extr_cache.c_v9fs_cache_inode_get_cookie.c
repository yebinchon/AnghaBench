
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int fscache; } ;
struct v9fs_cookie {scalar_t__ fscache; } ;
struct inode {int i_mode; } ;


 int P9_DEBUG_FSC ;
 int P9_DPRINTK (int ,char*,struct inode*,scalar_t__) ;
 int S_ISREG (int ) ;
 scalar_t__ fscache_acquire_cookie (int ,int *,struct v9fs_cookie*) ;
 int v9fs_cache_inode_index_def ;
 struct v9fs_cookie* v9fs_inode2cookie (struct inode*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

void v9fs_cache_inode_get_cookie(struct inode *inode)
{
 struct v9fs_cookie *vcookie;
 struct v9fs_session_info *v9ses;

 if (!S_ISREG(inode->i_mode))
  return;

 vcookie = v9fs_inode2cookie(inode);
 if (vcookie->fscache)
  return;

 v9ses = v9fs_inode2v9ses(inode);
 vcookie->fscache = fscache_acquire_cookie(v9ses->fscache,
        &v9fs_cache_inode_index_def,
        vcookie);

 P9_DPRINTK(P9_DEBUG_FSC, "inode %p get cookie %p", inode,
     vcookie->fscache);
}
