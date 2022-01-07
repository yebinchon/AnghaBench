
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unshareline ;
typedef int shareline ;


 int BUFSIZ ;
 int dotest () ;
 int getpid () ;
 int snprintf (char*,int,char*,int,int) ;
 int system (char*) ;

int
main(int argc, char **argv)
{
 char shareline[BUFSIZ], unshareline[BUFSIZ];
 int rc;

 (void) snprintf(shareline, sizeof (shareline),
     "mkdir /tmp/nfsv4test.%d ; share /tmp/nfsv4test.%d", getpid(),
     getpid());
 (void) snprintf(unshareline, sizeof (unshareline),
     "unshare /tmp/nfsv4test.%d ; rmdir /tmp/nfsv4test.%d", getpid(),
     getpid());

 (void) system(shareline);
 rc = dotest();
 (void) system(unshareline);

 return (rc);
}
