
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; int st_gid; int st_uid; int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ chk_path (char*,int ,int ) ;
 int errno ;
 scalar_t__ kflag ;
 scalar_t__ link (char*,char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int nodirs ;
 int paxwarn (int,char*,char*) ;
 scalar_t__ rmdir (char*) ;
 int syswarn (int,int,char*,char*,...) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static int
mk_link(char *to, struct stat *to_sb, char *from,
 int ign)
{
 struct stat sb;
 int oerrno;





 if (lstat(from, &sb) == 0) {
  if (kflag)
   return(0);




  if ((to_sb->st_dev==sb.st_dev)&&(to_sb->st_ino == sb.st_ino)) {
   paxwarn(1, "Unable to link file %s to itself", to);
   return(-1);
  }




  if (S_ISDIR(sb.st_mode)) {
   if (rmdir(from) < 0) {
    syswarn(1, errno, "Unable to remove %s", from);
    return(-1);
   }
  } else if (unlink(from) < 0) {
   if (!ign) {
    syswarn(1, errno, "Unable to remove %s", from);
    return(-1);
   }
   return(1);
  }
 }






 for (;;) {
  if (link(to, from) == 0)
   break;
  oerrno = errno;
  if (!nodirs && chk_path(from, to_sb->st_uid, to_sb->st_gid) == 0)
   continue;
  if (!ign) {
   syswarn(1, oerrno, "Could not link to %s from %s", to,
       from);
   return(-1);
  }
  return(1);
 }




 return(0);
}
