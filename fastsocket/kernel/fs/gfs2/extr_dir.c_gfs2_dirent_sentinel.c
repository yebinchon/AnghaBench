
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ no_addr; scalar_t__ no_formal_ino; } ;
struct gfs2_dirent {TYPE_1__ de_inum; } ;



__attribute__((used)) static inline int gfs2_dirent_sentinel(const struct gfs2_dirent *dent)
{
 return dent->de_inum.no_addr == 0 || dent->de_inum.no_formal_ino == 0;
}
