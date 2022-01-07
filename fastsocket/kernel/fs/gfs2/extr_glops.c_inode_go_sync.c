
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct address_space* i_mapping; int i_mode; } ;
struct gfs2_inode {TYPE_1__ i_inode; int i_flags; } ;
struct gfs2_glock {scalar_t__ gl_state; int gl_flags; int gl_sbd; struct gfs2_inode* gl_object; } ;
struct address_space {int dummy; } ;


 int BUG_ON (int) ;
 int GIF_SW_PAGED ;
 int GLF_DIRTY ;
 scalar_t__ LM_ST_EXCLUSIVE ;
 int S_ISREG (int ) ;
 int clear_bit (int ,int *) ;
 int filemap_fdatawait (struct address_space*) ;
 int filemap_fdatawrite (struct address_space*) ;
 int gfs2_ail_empty_gl (struct gfs2_glock*) ;
 struct address_space* gfs2_glock2aspace (struct gfs2_glock*) ;
 int gfs2_log_flush (int ,struct gfs2_glock*) ;
 int mapping_set_error (struct address_space*,int) ;
 int smp_mb__before_clear_bit () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int unmap_shared_mapping_range (struct address_space*,int ,int ) ;

__attribute__((used)) static void inode_go_sync(struct gfs2_glock *gl)
{
 struct gfs2_inode *ip = gl->gl_object;
 struct address_space *metamapping = gfs2_glock2aspace(gl);
 int error;

 if (ip && !S_ISREG(ip->i_inode.i_mode))
  ip = ((void*)0);
 if (ip && test_and_clear_bit(GIF_SW_PAGED, &ip->i_flags))
  unmap_shared_mapping_range(ip->i_inode.i_mapping, 0, 0);
 if (!test_and_clear_bit(GLF_DIRTY, &gl->gl_flags))
  return;

 BUG_ON(gl->gl_state != LM_ST_EXCLUSIVE);

 gfs2_log_flush(gl->gl_sbd, gl);
 filemap_fdatawrite(metamapping);
 if (ip) {
  struct address_space *mapping = ip->i_inode.i_mapping;
  filemap_fdatawrite(mapping);
  error = filemap_fdatawait(mapping);
  mapping_set_error(mapping, error);
 }
 error = filemap_fdatawait(metamapping);
 mapping_set_error(metamapping, error);
 gfs2_ail_empty_gl(gl);




 smp_mb__before_clear_bit();
 clear_bit(GLF_DIRTY, &gl->gl_flags);
}
