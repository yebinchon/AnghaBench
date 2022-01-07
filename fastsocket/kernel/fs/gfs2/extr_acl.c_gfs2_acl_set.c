
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int GFS2_EATYPE_SYS ;
 char* gfs2_acl_name (int) ;
 int gfs2_xattr_set (struct inode*,int ,char const*,char*,int,int ) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int posix_acl_to_xattr (struct posix_acl*,char*,int) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static int gfs2_acl_set(struct inode *inode, int type, struct posix_acl *acl)
{
 int error;
 int len;
 char *data;
 const char *name = gfs2_acl_name(type);

 BUG_ON(name == ((void*)0));
 len = posix_acl_to_xattr(acl, ((void*)0), 0);
 if (len == 0)
  return 0;
 data = kmalloc(len, GFP_NOFS);
 if (data == ((void*)0))
  return -ENOMEM;
 error = posix_acl_to_xattr(acl, data, len);
 if (error < 0)
  goto out;
 error = gfs2_xattr_set(inode, GFS2_EATYPE_SYS, name, data, len, 0);
 if (!error)
  set_cached_acl(inode, type, acl);
out:
 kfree(data);
 return error;
}
