
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct gfs2_inode {int i_inode; int i_eattr; } ;


 struct posix_acl* ACL_NOT_CACHED ;
 int EINVAL ;
 struct posix_acl* ERR_PTR (int) ;
 struct posix_acl* get_cached_acl (int *,int) ;
 char* gfs2_acl_name (int) ;
 int gfs2_xattr_acl_get (struct gfs2_inode*,char const*,char**) ;
 int kfree (char*) ;
 struct posix_acl* posix_acl_from_xattr (char*,int) ;

__attribute__((used)) static struct posix_acl *gfs2_acl_get(struct gfs2_inode *ip, int type)
{
 struct posix_acl *acl;
 const char *name;
 char *data;
 int len;

 if (!ip->i_eattr)
  return ((void*)0);

 acl = get_cached_acl(&ip->i_inode, type);
 if (acl != ACL_NOT_CACHED)
  return acl;

 name = gfs2_acl_name(type);
 if (name == ((void*)0))
  return ERR_PTR(-EINVAL);

 len = gfs2_xattr_acl_get(ip, name, &data);
 if (len < 0)
  return ERR_PTR(len);
 if (len == 0)
  return ((void*)0);

 acl = posix_acl_from_xattr(data, len);
 kfree(data);
 return acl;
}
