
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_atime; int st_mtime; } ;
struct TYPE_5__ {TYPE_1__ sb; int org_name; } ;
typedef TYPE_2__ ARCHD ;


 int close (int) ;
 int set_ftime (int ,int ,int ,int) ;
 int tflag ;

void
rdfile_close(ARCHD *arcn, int *fd)
{



 if (*fd < 0)
  return;

 (void)close(*fd);
 *fd = -1;
 if (!tflag)
  return;




 set_ftime(arcn->org_name, arcn->sb.st_mtime, arcn->sb.st_atime, 1);
 return;
}
