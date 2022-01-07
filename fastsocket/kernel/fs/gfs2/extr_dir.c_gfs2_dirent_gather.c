
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct dirent_gather {int offset; struct gfs2_dirent const** pdent; } ;


 int gfs2_dirent_sentinel (struct gfs2_dirent const*) ;

__attribute__((used)) static int gfs2_dirent_gather(const struct gfs2_dirent *dent,
         const struct qstr *name,
         void *opaque)
{
 struct dirent_gather *g = opaque;
 if (!gfs2_dirent_sentinel(dent)) {
  g->pdent[g->offset++] = dent;
 }
 return 0;
}
