
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int mode_t ;
struct TYPE_5__ {int st_mode; int st_atime; int st_mtime; int st_gid; int st_uid; int st_rdev; } ;
struct TYPE_4__ {int type; TYPE_3__ sb; int name; int nlen; int ln_name; } ;
typedef TYPE_1__ ARCHD ;


 int FILEBITS ;
 int NM_CPIO ;
 int R_OK ;
 int SETBITS ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IRWXU ;
 int W_OK ;
 int X_OK ;
 scalar_t__ access (int ,int) ;
 int add_dir (int ,int ,TYPE_3__*,int) ;
 int argv0 ;
 scalar_t__ chk_path (int ,int ,int ) ;
 int errno ;
 scalar_t__ lstat (int ,struct stat*) ;
 int mkdir (int ,int) ;
 int mkfifo (int ,int) ;
 int mknod (int ,int,int ) ;
 scalar_t__ nodirs ;
 scalar_t__ patime ;
 int paxwarn (int ,char*,int ) ;
 scalar_t__ pids ;
 scalar_t__ pmode ;
 scalar_t__ pmtime ;
 int set_ftime (int ,int ,int ,int ) ;
 int set_ids (int ,int ,int ) ;
 int set_pmode (int ,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int symlink (int ,int ) ;
 int syswarn (int,int,char*,int ) ;
 int unlnk_exist (int ,int) ;

int
node_creat(ARCHD *arcn)
{
 int res;
 int ign = 0;
 int oerrno;
 int pass = 0;
 mode_t file_mode;
 struct stat sb;







 file_mode = arcn->sb.st_mode & FILEBITS;

 for (;;) {
  switch(arcn->type) {
  case 134:
   res = mkdir(arcn->name, file_mode);
   if (ign)
    res = 0;
   break;
  case 136:
   file_mode |= S_IFCHR;
   res = mknod(arcn->name, file_mode, arcn->sb.st_rdev);
   break;
  case 137:
   file_mode |= S_IFBLK;
   res = mknod(arcn->name, file_mode, arcn->sb.st_rdev);
   break;
  case 133:
   res = mkfifo(arcn->name, file_mode);
   break;
  case 129:



   paxwarn(0,
       "%s skipped. Sockets cannot be copied or extracted",
       arcn->name);
   return(-1);
  case 128:
   res = symlink(arcn->ln_name, arcn->name);
   break;
  case 135:
  case 132:
  case 131:
  case 130:
  default:



   paxwarn(0, "%s has an unknown file type, skipping",
    arcn->name);
   return(-1);
  }






  if (res == 0)
   break;




  oerrno = errno;
  if ((ign = unlnk_exist(arcn->name, arcn->type)) < 0)
   return(-1);

  if (++pass <= 1)
   continue;

  if (nodirs || chk_path(arcn->name,arcn->sb.st_uid,arcn->sb.st_gid) < 0) {
   syswarn(1, oerrno, "Could not create: %s", arcn->name);
   return(-1);
  }
 }




 if (pids)
  res = set_ids(arcn->name, arcn->sb.st_uid, arcn->sb.st_gid);
 else
  res = 0;






 if (!pmode || res)
  arcn->sb.st_mode &= ~(SETBITS);
 if (pmode)
  set_pmode(arcn->name, arcn->sb.st_mode);

 if (arcn->type == 134 && strcmp(NM_CPIO, argv0) != 0) {
  if (access(arcn->name, R_OK | W_OK | X_OK) < 0) {
   if (lstat(arcn->name, &sb) < 0) {
    syswarn(0, errno,"Could not access %s (stat)",
        arcn->name);
    set_pmode(arcn->name,file_mode | S_IRWXU);
   } else {






    set_pmode(arcn->name,
        ((sb.st_mode & FILEBITS) | S_IRWXU));
    if (!pmode)
     arcn->sb.st_mode = sb.st_mode;
   }





   add_dir(arcn->name, arcn->nlen, &(arcn->sb), 1);
  } else if (pmode || patime || pmtime)
   add_dir(arcn->name, arcn->nlen, &(arcn->sb), 0);
 }

 if (patime || pmtime)
  set_ftime(arcn->name, arcn->sb.st_mtime, arcn->sb.st_atime, 0);
 return(0);
}
