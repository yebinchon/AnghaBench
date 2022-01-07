
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct kstat {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int * gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;

__attribute__((used)) static int gfs2_getattr(struct vfsmount *mnt, struct dentry *dentry,
   struct kstat *stat)
{
 struct inode *inode = dentry->d_inode;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 int error;
 int unlock = 0;

 if (gfs2_glock_is_locked_by_me(ip->i_gl) == ((void*)0)) {
  error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
  if (error)
   return error;
  unlock = 1;
 }

 generic_fillattr(inode, stat);
 if (unlock)
  gfs2_glock_dq_uninit(&gh);

 return 0;
}
