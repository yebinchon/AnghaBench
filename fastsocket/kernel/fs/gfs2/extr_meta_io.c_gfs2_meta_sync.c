
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_sbd; } ;
struct address_space {int dummy; } ;


 int filemap_fdatawait (struct address_space*) ;
 int filemap_fdatawrite (struct address_space*) ;
 struct address_space* gfs2_glock2aspace (struct gfs2_glock*) ;
 int gfs2_io_error (int ) ;

void gfs2_meta_sync(struct gfs2_glock *gl)
{
 struct address_space *mapping = gfs2_glock2aspace(gl);
 int error;

 filemap_fdatawrite(mapping);
 error = filemap_fdatawait(mapping);

 if (error)
  gfs2_io_error(gl->gl_sbd);
}
