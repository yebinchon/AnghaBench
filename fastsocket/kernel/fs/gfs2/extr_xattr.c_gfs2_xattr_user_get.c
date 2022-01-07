
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int GFS2_EATYPE_USR ;
 int gfs2_xattr_get (struct inode*,int ,char const*,void*,size_t) ;

__attribute__((used)) static int gfs2_xattr_user_get(struct inode *inode, const char *name,
          void *buffer, size_t size)
{
 return gfs2_xattr_get(inode, GFS2_EATYPE_USR, name, buffer, size);
}
