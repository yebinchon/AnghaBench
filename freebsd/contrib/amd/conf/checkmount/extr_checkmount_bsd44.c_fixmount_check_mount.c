
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntfromname; } ;
struct in_addr {int dummy; } ;


 int MNT_NOWAIT ;
 scalar_t__ STREQ (char*,char*) ;
 int exit (int) ;
 int getmntinfo (struct statfs**,int ) ;
 scalar_t__ is_same_host (int ,char*,struct in_addr) ;
 int perror (char*) ;
 char* strchr (int ,char) ;

int
fixmount_check_mount(char *host, struct in_addr hostaddr, char *path)
{
  struct statfs *mntbufp, *mntp;
  int nloc, i;
  char *colon;


  nloc = getmntinfo(&mntbufp, MNT_NOWAIT);
  if (nloc <= 0) {
    perror("getmntinfo");
    exit(1);
  }

  mntp = mntbufp;
  for (i=0; i<nloc; ++i) {
    if ((colon = strchr(mntp->f_mntfromname, ':'))) {
      *colon = '\0';
      if (STREQ(colon + 1, path) &&
   is_same_host(mntp->f_mntfromname, host, hostaddr))
 return 1;
    }
  }

  return 0;
}
