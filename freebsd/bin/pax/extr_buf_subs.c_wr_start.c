
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t bsz; } ;


 size_t BLKMULT ;
 size_t MAXBLK ;
 size_t MAXBLK_POSIX ;
 scalar_t__ ar_next () ;
 scalar_t__ ar_open (int ) ;
 int arcname ;
 size_t blksz ;
 void* buf ;
 void* bufend ;
 int * bufmem ;
 void* bufpt ;
 TYPE_1__* frmt ;
 int paxwarn (int,char*,size_t,size_t) ;
 size_t rdblksz ;
 size_t wrblksz ;
 scalar_t__ wrcnt ;

int
wr_start(void)
{
 buf = &(bufmem[BLKMULT]);







 if (!wrblksz)
  wrblksz = frmt->bsz;
 if (wrblksz > MAXBLK) {
  paxwarn(1, "Write block size of %d too large, maximum is: %d",
   wrblksz, MAXBLK);
  return(-1);
 }
 if (wrblksz % BLKMULT) {
  paxwarn(1, "Write block size of %d is not a %d byte multiple",
      wrblksz, BLKMULT);
  return(-1);
 }
 if (wrblksz > MAXBLK_POSIX) {
  paxwarn(0, "Write block size of %d larger than POSIX max %d, archive may not be portable",
   wrblksz, MAXBLK_POSIX);
  return(-1);
 }




 blksz = rdblksz = wrblksz;
 if ((ar_open(arcname) < 0) && (ar_next() < 0))
  return(-1);
 wrcnt = 0;
 bufend = buf + wrblksz;
 bufpt = buf;
 return(0);
}
