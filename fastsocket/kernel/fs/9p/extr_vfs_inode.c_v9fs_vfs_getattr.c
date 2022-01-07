
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct p9_wstat {int dummy; } ;
typedef struct p9_wstat p9_fid ;
struct kstat {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int i_sb; } ;


 scalar_t__ CACHE_FSCACHE ;
 scalar_t__ CACHE_LOOSE ;
 int EPERM ;
 scalar_t__ IS_ERR (struct p9_wstat*) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,struct dentry*) ;
 int PTR_ERR (struct p9_wstat*) ;
 int generic_fillattr (TYPE_1__*,struct kstat*) ;
 int kfree (struct p9_wstat*) ;
 struct p9_wstat* p9_client_stat (struct p9_wstat*) ;
 int simple_getattr (struct vfsmount*,struct dentry*,struct kstat*) ;
 struct p9_wstat* v9fs_fid_lookup (struct dentry*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (TYPE_1__*) ;
 int v9fs_stat2inode (struct p9_wstat*,TYPE_1__*,int ) ;

__attribute__((used)) static int
v9fs_vfs_getattr(struct vfsmount *mnt, struct dentry *dentry,
   struct kstat *stat)
{
 int err;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid;
 struct p9_wstat *st;

 P9_DPRINTK(P9_DEBUG_VFS, "dentry: %p\n", dentry);
 err = -EPERM;
 v9ses = v9fs_inode2v9ses(dentry->d_inode);
 if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
  return simple_getattr(mnt, dentry, stat);

 fid = v9fs_fid_lookup(dentry);
 if (IS_ERR(fid))
  return PTR_ERR(fid);

 st = p9_client_stat(fid);
 if (IS_ERR(st))
  return PTR_ERR(st);

 v9fs_stat2inode(st, dentry->d_inode, dentry->d_inode->i_sb);
  generic_fillattr(dentry->d_inode, stat);

 kfree(st);
 return 0;
}
