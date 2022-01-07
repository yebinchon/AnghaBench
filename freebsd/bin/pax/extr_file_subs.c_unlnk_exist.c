
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int PAX_DIR ;
 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 scalar_t__ kflag ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ rmdir (char*) ;
 int syswarn (int,int ,char*,char*) ;
 scalar_t__ unlink (char*) ;

int
unlnk_exist(char *name, int type)
{
 struct stat sb;




 if (lstat(name, &sb) < 0)
  return(0);
 if (kflag)
  return(-1);

 if (S_ISDIR(sb.st_mode)) {




  if (rmdir(name) < 0) {
   if (type == PAX_DIR)
    return(1);
   syswarn(1,errno,"Unable to remove directory %s", name);
   return(-1);
  }
  return(0);
 }




 if (unlink(name) < 0) {
  syswarn(1, errno, "Could not unlink %s", name);
  return(-1);
 }
 return(0);
}
