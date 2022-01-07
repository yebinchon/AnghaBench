
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {scalar_t__ a_count; } ;
struct inode {scalar_t__ i_uid; int i_mode; } ;
struct TYPE_2__ {int ar_posix_acl; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
typedef int mode_t ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int CAP_FOWNER ;
 int EACCES ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ GFS2_ACL_MAX_ENTRIES (struct gfs2_sbd*) ;
 int GFS2_EATYPE_SYS ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int XATTR_CREATE ;
 int capable (int ) ;
 scalar_t__ current_fsuid () ;
 int forget_cached_acl (struct inode*,int) ;
 int gfs2_acl_type (char const*) ;
 int gfs2_set_mode (struct inode*,int ) ;
 int gfs2_xattr_set (struct inode*,int ,char const*,void const*,size_t,int ) ;
 int posix_acl_equiv_mode (struct posix_acl*,int *) ;
 struct posix_acl* posix_acl_from_xattr (void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_valid (struct posix_acl*) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static int gfs2_xattr_system_set(struct inode *inode, const char *name,
     const void *value, size_t size, int flags)
{
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct posix_acl *acl = ((void*)0);
 int error = 0, type;

 if (!sdp->sd_args.ar_posix_acl)
  return -EOPNOTSUPP;

 type = gfs2_acl_type(name);
 if (type < 0)
  return type;
 if (flags & XATTR_CREATE)
  return -EINVAL;
 if (type == ACL_TYPE_DEFAULT && !S_ISDIR(inode->i_mode))
  return value ? -EACCES : 0;
 if ((current_fsuid() != inode->i_uid) && !capable(CAP_FOWNER))
  return -EPERM;
 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 if (!value)
  goto set_acl;

 acl = posix_acl_from_xattr(value, size);
 if (!acl) {




  goto out;
 }
 if (IS_ERR(acl)) {
  error = PTR_ERR(acl);
  goto out;
 }

 error = posix_acl_valid(acl);
 if (error)
  goto out_release;

 error = -EINVAL;
 if (acl->a_count > GFS2_ACL_MAX_ENTRIES(sdp))
  goto out_release;

 if (type == ACL_TYPE_ACCESS) {
  mode_t mode = inode->i_mode;
  error = posix_acl_equiv_mode(acl, &mode);

  if (error <= 0) {
   posix_acl_release(acl);
   acl = ((void*)0);

   if (error < 0)
    return error;
  }

  error = gfs2_set_mode(inode, mode);
  if (error)
   goto out_release;
 }

set_acl:
 error = gfs2_xattr_set(inode, GFS2_EATYPE_SYS, name, value, size, 0);
 if (!error) {
  if (acl)
   set_cached_acl(inode, type, acl);
  else
   forget_cached_acl(inode, type);
 }
out_release:
 posix_acl_release(acl);
out:
 return error;
}
