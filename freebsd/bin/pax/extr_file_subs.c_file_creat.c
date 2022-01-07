
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_4__ {int st_mode; int st_gid; int st_uid; } ;
struct TYPE_5__ {int name; TYPE_1__ sb; int type; } ;
typedef TYPE_2__ ARCHD ;


 int FILEBITS ;
 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 scalar_t__ chk_path (int ,int ,int ) ;
 int errno ;
 scalar_t__ nodirs ;
 int open (int ,int,int) ;
 int syswarn (int,int,char*,int ) ;
 scalar_t__ unlnk_exist (int ,int ) ;

int
file_creat(ARCHD *arcn)
{
 int fd = -1;
 mode_t file_mode;
 int oerrno;
 file_mode = arcn->sb.st_mode & FILEBITS;
 if ((fd = open(arcn->name, O_WRONLY | O_CREAT | O_TRUNC | O_EXCL,
     file_mode)) >= 0)
  return(fd);






 if (unlnk_exist(arcn->name, arcn->type) != 0)
  return(-1);

 for (;;) {





  if ((fd = open(arcn->name, O_WRONLY | O_CREAT | O_TRUNC,
      file_mode)) >= 0)
   break;
  oerrno = errno;
  if (nodirs || chk_path(arcn->name,arcn->sb.st_uid,arcn->sb.st_gid) < 0) {
   syswarn(1, oerrno, "Unable to create %s", arcn->name);
   return(-1);
  }
 }
 return(fd);
}
