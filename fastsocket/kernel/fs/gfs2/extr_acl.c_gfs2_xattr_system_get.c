
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int ar_posix_acl; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;


 int ENODATA ;
 int EOPNOTSUPP ;
 int GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 struct posix_acl* gfs2_acl_get (int ,int) ;
 int gfs2_acl_type (char const*) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_to_xattr (struct posix_acl*,void*,size_t) ;

__attribute__((used)) static int gfs2_xattr_system_get(struct inode *inode, const char *name,
     void *buffer, size_t size)
{
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct posix_acl *acl;
 int type;
 int error;

 if (!sdp->sd_args.ar_posix_acl)
  return -EOPNOTSUPP;

 type = gfs2_acl_type(name);
 if (type < 0)
  return type;

 acl = gfs2_acl_get(GFS2_I(inode), type);
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (acl == ((void*)0))
  return -ENODATA;

 error = posix_acl_to_xattr(acl, buffer, size);
 posix_acl_release(acl);

 return error;
}
