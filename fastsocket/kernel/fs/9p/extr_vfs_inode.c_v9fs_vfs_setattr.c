
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v9fs_session_info {int dummy; } ;
struct p9_wstat {int n_gid; int n_uid; int length; int atime; int mtime; int mode; } ;
struct p9_fid {int dummy; } ;
struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {int tv_sec; } ;
struct iattr {int ia_valid; int ia_gid; int ia_uid; int ia_size; TYPE_2__ ia_atime; TYPE_1__ ia_mtime; int ia_mode; } ;
struct dentry {int d_inode; } ;


 int ATTR_ATIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EPERM ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*) ;
 int PTR_ERR (struct p9_fid*) ;
 int inode_setattr (int ,struct iattr*) ;
 int p9_client_wstat (struct p9_fid*,struct p9_wstat*) ;
 int unixmode2p9mode (struct v9fs_session_info*,int ) ;
 int v9fs_blank_wstat (struct p9_wstat*) ;
 scalar_t__ v9fs_extended (struct v9fs_session_info*) ;
 struct p9_fid* v9fs_fid_lookup (struct dentry*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (int ) ;

__attribute__((used)) static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
{
 int retval;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid;
 struct p9_wstat wstat;

 P9_DPRINTK(P9_DEBUG_VFS, "\n");
 retval = -EPERM;
 v9ses = v9fs_inode2v9ses(dentry->d_inode);
 fid = v9fs_fid_lookup(dentry);
 if(IS_ERR(fid))
  return PTR_ERR(fid);

 v9fs_blank_wstat(&wstat);
 if (iattr->ia_valid & ATTR_MODE)
  wstat.mode = unixmode2p9mode(v9ses, iattr->ia_mode);

 if (iattr->ia_valid & ATTR_MTIME)
  wstat.mtime = iattr->ia_mtime.tv_sec;

 if (iattr->ia_valid & ATTR_ATIME)
  wstat.atime = iattr->ia_atime.tv_sec;

 if (iattr->ia_valid & ATTR_SIZE)
  wstat.length = iattr->ia_size;

 if (v9fs_extended(v9ses)) {
  if (iattr->ia_valid & ATTR_UID)
   wstat.n_uid = iattr->ia_uid;

  if (iattr->ia_valid & ATTR_GID)
   wstat.n_gid = iattr->ia_gid;
 }

 retval = p9_client_wstat(fid, &wstat);
 if (retval >= 0)
  retval = inode_setattr(dentry->d_inode, iattr);

 return retval;
}
