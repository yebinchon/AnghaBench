
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; int st_atime; int st_mtime; } ;
typedef int dblk ;
struct TYPE_2__ {int nlen; int mode; int frc_mode; int atime; int mtime; int npos; } ;
typedef TYPE_1__ DIRDATA ;


 int SEEK_CUR ;
 int dircnt ;
 scalar_t__ dirfd ;
 int lseek (scalar_t__,long,int ) ;
 int paxwarn (int,char*,char*) ;
 int write (scalar_t__,char*,int) ;

void
add_dir(char *name, int nlen, struct stat *psb, int frc_mode)
{
 DIRDATA dblk;

 if (dirfd < 0)
  return;





 if ((dblk.npos = lseek(dirfd, 0L, SEEK_CUR)) < 0) {
  paxwarn(1,"Unable to store mode and times for directory: %s",name);
  return;
 }




 dblk.nlen = nlen + 1;
 dblk.mode = psb->st_mode & 0xffff;
 dblk.mtime = psb->st_mtime;
 dblk.atime = psb->st_atime;
 dblk.frc_mode = frc_mode;
 if ((write(dirfd, name, dblk.nlen) == dblk.nlen) &&
     (write(dirfd, (char *)&dblk, sizeof(dblk)) == sizeof(dblk))) {
  ++dircnt;
  return;
 }

 paxwarn(1,"Unable to store mode and times for created directory: %s",name);
 return;
}
