
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long off_t ;


 long MIN (long,long) ;
 scalar_t__ ar_fow (long,long*) ;
 long buf_fill () ;
 long bufend ;
 long bufpt ;
 long rdblksz ;
 long rdcnt ;

int
rd_skip(off_t skcnt)
{
 off_t res;
 off_t cnt;
 off_t skipped = 0;







 if (skcnt == 0)
  return(0);
 res = MIN((bufend - bufpt), skcnt);
 bufpt += res;
 skcnt -= res;




 if (skcnt == 0)
  return(0);





 res = skcnt%rdblksz;
 cnt = (skcnt/rdblksz) * rdblksz;





 if (ar_fow(cnt, &skipped) < 0)
  return(-1);
 res += cnt - skipped;
 rdcnt += skipped;





 while (res > 0L) {
  cnt = bufend - bufpt;



  if ((cnt <= 0) && ((cnt = buf_fill()) < 0))
   return(-1);
  if (cnt == 0)
   return(1);
  cnt = MIN(cnt, res);
  bufpt += cnt;
  res -= cnt;
 }
 return(0);
}
