
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int AMU_UMOUNT_FORCE ;







 int XLOG_WARNING ;
 int dlog (char*,char*) ;
 int errno ;
 int plog (int ,char*,char*) ;
 int umount2_fs (char*,int) ;
 int unmount (char*,int ) ;

int
umount_fs(char *mntdir, const char *mnttabname, u_int unmount_flags)
{
  int error;

eintr:
  error = unmount(mntdir, 0);
  if (error < 0)
    error = errno;

  switch (error) {
  case 132:
  case 129:
  case 130:
    plog(XLOG_WARNING, "unmount: %s is not mounted", mntdir);
    error = 0;
    break;

  case 133:

    dlog("%s: unmount: %m", mntdir);
    goto eintr;
  default:
    dlog("%s: unmount: %m", mntdir);
    break;
  }

  return error;
}
