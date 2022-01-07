
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_atime; int st_mtime; int st_mode; int st_gid; int st_uid; } ;
struct TYPE_5__ {TYPE_1__ sb; int name; } ;
typedef TYPE_2__ ARCHD ;


 int SETBITS ;
 scalar_t__ close (int) ;
 int errno ;
 scalar_t__ patime ;
 scalar_t__ pids ;
 scalar_t__ pmode ;
 scalar_t__ pmtime ;
 int set_ftime (int ,int ,int ,int ) ;
 int set_ids (int ,int ,int ) ;
 int set_pmode (int ,int ) ;
 int syswarn (int ,int ,char*,int ) ;

void
file_close(ARCHD *arcn, int fd)
{
 int res = 0;

 if (fd < 0)
  return;
 if (close(fd) < 0)
  syswarn(0, errno, "Unable to close file descriptor on %s",
      arcn->name);






 if (pids)
  res = set_ids(arcn->name, arcn->sb.st_uid, arcn->sb.st_gid);






 if (!pmode || res)
  arcn->sb.st_mode &= ~(SETBITS);
 if (pmode)
  set_pmode(arcn->name, arcn->sb.st_mode);
 if (patime || pmtime)
  set_ftime(arcn->name, arcn->sb.st_mtime, arcn->sb.st_atime, 0);
}
