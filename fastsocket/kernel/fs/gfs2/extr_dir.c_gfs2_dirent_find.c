
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct gfs2_dirent {int dummy; } ;


 int __gfs2_dirent_find (struct gfs2_dirent const*,struct qstr const*,int) ;

__attribute__((used)) static int gfs2_dirent_find(const struct gfs2_dirent *dent,
       const struct qstr *name,
       void *opaque)
{
 return __gfs2_dirent_find(dent, name, 1);
}
