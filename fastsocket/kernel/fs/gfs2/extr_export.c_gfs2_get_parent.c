
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int * d_op; int d_inode; } ;


 int IS_ERR (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int gfs2_dops ;
 int gfs2_lookupi (int ,int *,int) ;
 int gfs2_qdotdot ;

__attribute__((used)) static struct dentry *gfs2_get_parent(struct dentry *child)
{
 struct dentry *dentry;

 dentry = d_obtain_alias(gfs2_lookupi(child->d_inode, &gfs2_qdotdot, 1));
 if (!IS_ERR(dentry))
  dentry->d_op = &gfs2_dops;
 return dentry;
}
