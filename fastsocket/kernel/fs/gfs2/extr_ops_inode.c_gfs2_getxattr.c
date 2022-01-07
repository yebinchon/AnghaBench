
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef int ssize_t ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int generic_getxattr (struct dentry*,char const*,void*,size_t) ;
 int gfs2_glock_dq (struct gfs2_holder*) ;
 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;

__attribute__((used)) static ssize_t gfs2_getxattr(struct dentry *dentry, const char *name,
        void *data, size_t size)
{
 struct inode *inode = dentry->d_inode;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 int ret;

 gfs2_holder_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
 ret = gfs2_glock_nq(&gh);
 if (ret == 0) {
  ret = generic_getxattr(dentry, name, data, size);
  gfs2_glock_dq(&gh);
 }
 gfs2_holder_uninit(&gh);
 return ret;
}
