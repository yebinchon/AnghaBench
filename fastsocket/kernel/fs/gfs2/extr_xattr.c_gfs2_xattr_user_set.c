
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int GFS2_EATYPE_USR ;
 int gfs2_xattr_set (struct inode*,int ,char const*,void const*,size_t,int) ;

__attribute__((used)) static int gfs2_xattr_user_set(struct inode *inode, const char *name,
          const void *value, size_t size, int flags)
{
 return gfs2_xattr_set(inode, GFS2_EATYPE_USR, name, value, size, flags);
}
