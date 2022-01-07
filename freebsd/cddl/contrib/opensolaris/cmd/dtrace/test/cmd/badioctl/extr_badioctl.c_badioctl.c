
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int ioc ;
typedef scalar_t__ hrtime_t ;
typedef unsigned int* caddr_t ;


 unsigned int DTRACEIOC ;
 unsigned int DTRACEIOC_MAX ;
 scalar_t__ ESRCH ;
 int MAP_ANON ;
 int MAP_PRIVATE ;
 scalar_t__ NANOSEC ;
 int O_RDONLY ;
 int PROT_READ ;
 int PROT_WRITE ;
 int _SC_PAGESIZE ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fatal (char*) ;
 scalar_t__ gethrtime () ;
 int ioctl (int,unsigned int,unsigned int*) ;
 int kill (int ,int ) ;
 unsigned int* mmap (int ,int,int,int,int,int ) ;
 int open (char*,int ) ;
 int read (int,unsigned int*,int) ;
 int sysconf (int ) ;

void
badioctl(pid_t parent)
{
 int fd = -1, random, ps = sysconf(_SC_PAGESIZE);
 int i = 0, seconds;
 caddr_t addr;
 hrtime_t now, last = 0, end;

 if ((random = open("/dev/random", O_RDONLY)) == -1)
  fatal("couldn't open /dev/random");

 if ((addr = mmap(0, ps, PROT_READ | PROT_WRITE,
     MAP_ANON | MAP_PRIVATE, -1, 0)) == (caddr_t)-1)
  fatal("mmap");

 for (;;) {
  unsigned int ioc;

  if ((now = gethrtime()) - last > NANOSEC) {
   if (kill(parent, 0) == -1 && errno == ESRCH) {




    exit(0);
   }




   if (fd != -1)
    close(fd);

   fd = open("/devices/pseudo/dtrace@0:dtrace", O_RDONLY);

   if (fd == -1)
    fatal("couldn't open DTrace pseudo device");

   last = now;
  }


  if ((i++ % 1000) == 0) {



   read(random, addr, ps);
  }

  read(random, &ioc, sizeof (ioc));
  ioc %= DTRACEIOC_MAX;
  ioc++;
  ioctl(fd, DTRACEIOC | ioc, addr);
 }
}
