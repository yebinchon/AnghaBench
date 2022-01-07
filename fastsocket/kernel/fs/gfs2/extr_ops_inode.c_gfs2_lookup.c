
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_glock {int dummy; } ;
struct dentry {int d_name; int * d_op; } ;
struct TYPE_2__ {struct gfs2_glock* i_gl; } ;


 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int) ;
 TYPE_1__* GFS2_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int gfs2_dops ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (struct gfs2_glock*,int ,int ,struct gfs2_holder*) ;
 struct inode* gfs2_lookupi (struct inode*,int *,int ) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *gfs2_lookup(struct inode *dir, struct dentry *dentry,
      struct nameidata *nd)
{
 struct inode *inode = ((void*)0);

 dentry->d_op = &gfs2_dops;

 inode = gfs2_lookupi(dir, &dentry->d_name, 0);
 if (inode && IS_ERR(inode))
  return ERR_CAST(inode);

 if (inode) {
  struct gfs2_glock *gl = GFS2_I(inode)->i_gl;
  struct gfs2_holder gh;
  int error;
  error = gfs2_glock_nq_init(gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
  if (error) {
   iput(inode);
   return ERR_PTR(error);
  }
  gfs2_glock_dq_uninit(&gh);
  return d_splice_alias(inode, dentry);
 }
 d_add(dentry, inode);

 return ((void*)0);
}
