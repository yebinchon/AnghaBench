
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ APPND ;
 size_t BLKMULT ;
 size_t MAXBLK ;
 scalar_t__ act ;
 scalar_t__ ar_next () ;
 scalar_t__ ar_open (int ) ;
 int arcname ;
 int * buf ;
 int * bufend ;
 int * bufmem ;
 int * bufpt ;
 int paxwarn (int,char*,size_t,size_t) ;
 int rdblksz ;
 scalar_t__ rdcnt ;
 size_t wrblksz ;

int
rd_start(void)
{





 buf = &(bufmem[BLKMULT]);
 if ((act == APPND) && wrblksz) {
  if (wrblksz > MAXBLK) {
   paxwarn(1,"Write block size %d too large, maximum is: %d",
    wrblksz, MAXBLK);
   return(-1);
  }
  if (wrblksz % BLKMULT) {
   paxwarn(1, "Write block size %d is not a %d byte multiple",
   wrblksz, BLKMULT);
   return(-1);
  }
 }




 if ((ar_open(arcname) < 0) && (ar_next() < 0))
  return(-1);
 bufend = buf + rdblksz;
 bufpt = bufend;
 rdcnt = 0;
 return(0);
}
