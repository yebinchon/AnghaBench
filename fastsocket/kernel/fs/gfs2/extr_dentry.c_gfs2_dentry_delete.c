
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* gh_gl; } ;
struct gfs2_inode {TYPE_2__ i_iopen_gh; } ;
struct dentry {int d_inode; } ;
struct TYPE_3__ {int gl_flags; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int GLF_DEMOTE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gfs2_dentry_delete(struct dentry *dentry)
{
 struct gfs2_inode *ginode;

 if (!dentry->d_inode)
  return 0;

 ginode = GFS2_I(dentry->d_inode);
 if (!ginode->i_iopen_gh.gh_gl)
  return 0;

 if (test_bit(GLF_DEMOTE, &ginode->i_iopen_gh.gh_gl->gl_flags))
  return 1;

 return 0;
}
