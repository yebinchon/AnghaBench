
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_5__ {char* mf_mount; } ;
typedef TYPE_1__ mntfs ;
struct TYPE_6__ {char* am_link; } ;
typedef TYPE_2__ am_node ;


 int errno ;
 scalar_t__ lstat (char*,struct stat*) ;

__attribute__((used)) static int
amfs_linkx_mount(am_node *mp, mntfs *mf)
{



  struct stat stb;
  char *ln;

  if (mp->am_link)
    ln = mp->am_link;
  else
    ln = mf->mf_mount;






  if (lstat(ln, &stb) < 0)
    return errno;

  return 0;
}
