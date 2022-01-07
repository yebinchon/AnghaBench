
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int off_t ;
typedef int dblk ;
struct TYPE_2__ {int nlen; int atime; int mtime; int mode; scalar_t__ frc_mode; int npos; } ;
typedef TYPE_1__ DIRDATA ;


 int PAXPATHLEN ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int close (int) ;
 scalar_t__ dircnt ;
 int dirfd ;
 scalar_t__ lseek (int,int ,int ) ;
 scalar_t__ patime ;
 int paxwarn (int,char*) ;
 scalar_t__ pmode ;
 scalar_t__ pmtime ;
 int read (int,char*,int) ;
 int set_ftime (char*,int ,int ,int ) ;
 int set_pmode (char*,int ) ;

void
proc_dir(void)
{
 char name[PAXPATHLEN+1];
 DIRDATA dblk;
 u_long cnt;

 if (dirfd < 0)
  return;



 for (cnt = 0; cnt < dircnt; ++cnt) {




  if (lseek(dirfd, -((off_t)sizeof(dblk)), SEEK_CUR) < 0)
   break;
  if (read(dirfd,(char *)&dblk, sizeof(dblk)) != sizeof(dblk))
   break;
  if (lseek(dirfd, dblk.npos, SEEK_SET) < 0)
   break;
  if (read(dirfd, name, dblk.nlen) != dblk.nlen)
   break;
  if (lseek(dirfd, dblk.npos, SEEK_SET) < 0)
   break;





  if (pmode || dblk.frc_mode)
   set_pmode(name, dblk.mode);
  if (patime || pmtime)
   set_ftime(name, dblk.mtime, dblk.atime, 0);
 }

 (void)close(dirfd);
 dirfd = -1;
 if (cnt != dircnt)
  paxwarn(1,"Unable to set mode and times for created directories");
 return;
}
