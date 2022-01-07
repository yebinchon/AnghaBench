
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_7__ {int gh_flags; TYPE_1__* gh_gl; } ;
struct gfs2_inode {TYPE_3__ i_iopen_gh; TYPE_2__* i_gl; } ;
struct TYPE_6__ {int gl_work; int * gl_object; } ;
struct TYPE_5__ {int * gl_object; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int GL_NOCACHE ;
 int flush_delayed_work (int *) ;
 int gfs2_dir_hash_inval (struct gfs2_inode*) ;
 int gfs2_glock_add_to_lru (TYPE_2__*) ;
 int gfs2_glock_dq_uninit (TYPE_3__*) ;
 int gfs2_glock_put (TYPE_2__*) ;
 int gfs2_ordered_del_inode (struct gfs2_inode*) ;
 int gfs2_rs_delete (struct gfs2_inode*) ;

__attribute__((used)) static void gfs2_clear_inode(struct inode *inode)
{
 struct gfs2_inode *ip = GFS2_I(inode);

 gfs2_dir_hash_inval(ip);
 gfs2_rs_delete(ip);
 gfs2_ordered_del_inode(ip);
 ip->i_gl->gl_object = ((void*)0);
 flush_delayed_work(&ip->i_gl->gl_work);
 gfs2_glock_add_to_lru(ip->i_gl);
 gfs2_glock_put(ip->i_gl);
 ip->i_gl = ((void*)0);
 if (ip->i_iopen_gh.gh_gl) {
  ip->i_iopen_gh.gh_gl->gl_object = ((void*)0);
  ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
  gfs2_glock_dq_uninit(&ip->i_iopen_gh);
 }
}
