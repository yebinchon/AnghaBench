
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; } ;
struct TYPE_2__ {struct gfs2_glock* gh_gl; } ;
struct gfs2_inode {TYPE_1__ i_iopen_gh; } ;
struct gfs2_glock {int gl_flags; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int GLF_DEMOTE ;
 int clear_nlink (struct inode*) ;
 int generic_drop_inode (struct inode*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void gfs2_drop_inode(struct inode *inode)
{
 struct gfs2_inode *ip = GFS2_I(inode);

 if (inode->i_nlink) {
  struct gfs2_glock *gl = ip->i_iopen_gh.gh_gl;
  if (gl && test_bit(GLF_DEMOTE, &gl->gl_flags))
   clear_nlink(inode);
 }
 generic_drop_inode(inode);
}
