
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int path; } ;
struct gfs2_inode {int dummy; } ;
struct dentry {int d_inode; } ;


 void* ERR_PTR (int) ;
 int GFS2_FAST_NAME_SIZE ;
 struct gfs2_inode* GFS2_I (int ) ;
 int gfs2_readlinki (struct gfs2_inode*,char**,unsigned int*) ;
 int kfree (char*) ;
 int path_put (int *) ;
 int vfs_follow_link (struct nameidata*,char*) ;

__attribute__((used)) static void *gfs2_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct gfs2_inode *ip = GFS2_I(dentry->d_inode);
 char array[GFS2_FAST_NAME_SIZE], *buf = array;
 unsigned int len = GFS2_FAST_NAME_SIZE;
 int error;

 error = gfs2_readlinki(ip, &buf, &len);
 if (!error) {
  error = vfs_follow_link(nd, buf);
  if (buf != array)
   kfree(buf);
 } else
  path_put(&nd->path);

 return ERR_PTR(error);
}
