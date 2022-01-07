
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rgrpd {int rd_flags; } ;
struct gfs2_glock {scalar_t__ gl_object; int gl_ail_count; int gl_sbd; } ;
struct address_space {int dummy; } ;


 int BUG_ON (int) ;
 int DIO_METADATA ;
 int GFS2_RDF_UPTODATE ;
 int atomic_read (int *) ;
 int gfs2_assert_withdraw (int ,int) ;
 struct address_space* gfs2_glock2aspace (struct gfs2_glock*) ;
 int truncate_inode_pages (struct address_space*,int ) ;

__attribute__((used)) static void rgrp_go_inval(struct gfs2_glock *gl, int flags)
{
 struct address_space *mapping = gfs2_glock2aspace(gl);

 BUG_ON(!(flags & DIO_METADATA));
 gfs2_assert_withdraw(gl->gl_sbd, !atomic_read(&gl->gl_ail_count));
 truncate_inode_pages(mapping, 0);

 if (gl->gl_object) {
  struct gfs2_rgrpd *rgd = (struct gfs2_rgrpd *)gl->gl_object;
  rgd->rd_flags &= ~GFS2_RDF_UPTODATE;
 }
}
