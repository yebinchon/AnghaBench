
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 scalar_t__ EPERM ;
 int NM_PAX ;
 int argv0 ;
 scalar_t__ errno ;
 scalar_t__ geteuid () ;
 scalar_t__ lchown (char*,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int syswarn (int,scalar_t__,char*,char*) ;
 scalar_t__ vflag ;

int
set_ids(char *fnm, uid_t uid, gid_t gid)
{
 if (lchown(fnm, uid, gid) < 0) {




  if (strcmp(NM_PAX, argv0) == 0 || errno != EPERM || vflag ||
      geteuid() == 0)
   syswarn(1, errno, "Unable to set file uid/gid of %s",
       fnm);
  return(-1);
 }
 return(0);
}
