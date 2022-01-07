
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seed ;


 int O_RDONLY ;
 int close (int) ;
 uintptr_t getpid () ;
 int open (char*,int ) ;
 int read (int,unsigned int*,int) ;
 int srandom (unsigned int) ;
 uintptr_t time (int *) ;

void
init_random(void)
{
 unsigned int seed;
 int rf;

 rf = open("/dev/urandom", O_RDONLY);
 if (rf == -1)
  rf = open("/dev/random", O_RDONLY);

 if (!(rf != -1 && read(rf, &seed, sizeof(seed)) == sizeof(seed)))
  seed = (time(((void*)0)) ^ getpid()) + (uintptr_t)&seed;

 srandom(seed);

 if (rf != -1)
  close(rf);
}
