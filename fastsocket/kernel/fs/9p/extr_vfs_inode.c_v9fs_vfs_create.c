
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {struct p9_fid* private_data; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ open; } ;
struct nameidata {int flags; TYPE_2__ intent; } ;
struct inode {int dummy; } ;
struct file {struct file* private_data; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 int LOOKUP_OPEN ;
 int O_RDWR ;
 int PTR_ERR (struct p9_fid*) ;
 struct p9_fid* lookup_instantiate_filp (struct nameidata*,struct dentry*,int ) ;
 int p9_client_clunk (struct p9_fid*) ;
 int unixmode2p9mode (struct v9fs_session_info*,int) ;
 struct p9_fid* v9fs_create (struct v9fs_session_info*,struct inode*,struct dentry*,int *,int ,int ) ;
 int v9fs_extended (struct v9fs_session_info*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;
 int v9fs_open_created ;
 int v9fs_uflags2omode (int,int ) ;

__attribute__((used)) static int
v9fs_vfs_create(struct inode *dir, struct dentry *dentry, int mode,
  struct nameidata *nd)
{
 int err;
 u32 perm;
 int flags;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid;
 struct file *filp;

 err = 0;
 fid = ((void*)0);
 v9ses = v9fs_inode2v9ses(dir);
 perm = unixmode2p9mode(v9ses, mode);
 if (nd && nd->flags & LOOKUP_OPEN)
  flags = nd->intent.open.flags - 1;
 else
  flags = O_RDWR;

 fid = v9fs_create(v9ses, dir, dentry, ((void*)0), perm,
    v9fs_uflags2omode(flags, v9fs_extended(v9ses)));
 if (IS_ERR(fid)) {
  err = PTR_ERR(fid);
  fid = ((void*)0);
  goto error;
 }


 if (nd && nd->flags & LOOKUP_OPEN) {
  filp = lookup_instantiate_filp(nd, dentry, v9fs_open_created);
  if (IS_ERR(filp)) {
   err = PTR_ERR(filp);
   goto error;
  }

  filp->private_data = fid;
 } else
  p9_client_clunk(fid);

 return 0;

error:
 if (fid)
  p9_client_clunk(fid);

 return err;
}
