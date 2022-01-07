
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct TYPE_4__ {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct TYPE_5__ {int name; TYPE_1__ sb; } ;
typedef TYPE_2__ ARCHD ;


 scalar_t__ kflag ;
 scalar_t__ lstat (int ,struct stat*) ;
 int paxwarn (int,char*,int ) ;

int
chk_same(ARCHD *arcn)
{
 struct stat sb;





 if (lstat(arcn->name, &sb) < 0)
  return(1);
 if (kflag)
  return(0);




 if ((arcn->sb.st_dev == sb.st_dev) && (arcn->sb.st_ino == sb.st_ino)) {
  paxwarn(1, "Unable to copy %s, file would overwrite itself",
      arcn->name);
  return(0);
 }
 return(1);
}
