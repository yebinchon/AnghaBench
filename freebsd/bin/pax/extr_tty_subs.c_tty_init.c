
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVTTY ;
 int O_RDWR ;
 int close (int) ;
 int fclose (int *) ;
 void* fdopen (int,char*) ;
 scalar_t__ iflag ;
 int open (int ,int ) ;
 int paxwarn (int,char*,int ) ;
 int * ttyinf ;
 int * ttyoutf ;

int
tty_init(void)
{
 int ttyfd;

 if ((ttyfd = open(DEVTTY, O_RDWR)) >= 0) {
  if ((ttyoutf = fdopen(ttyfd, "w")) != ((void*)0)) {
   if ((ttyinf = fdopen(ttyfd, "r")) != ((void*)0))
    return(0);
   (void)fclose(ttyoutf);
  }
  (void)close(ttyfd);
 }

 if (iflag) {
  paxwarn(1, "Fatal error, cannot open %s", DEVTTY);
  return(-1);
 }
 return(0);
}
