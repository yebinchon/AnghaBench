
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long off_t ;


 int MIN (int,long) ;
 int blksz ;
 int buf_flush (int ) ;
 int bufend ;
 int bufpt ;
 int memset (int,int ,int) ;

int
wr_skip(off_t skcnt)
{
 int cnt;




 while (skcnt > 0L) {
  cnt = bufend - bufpt;
  if ((cnt <= 0) && ((cnt = buf_flush(blksz)) < 0))
   return(-1);
  cnt = MIN(cnt, skcnt);
  memset(bufpt, 0, cnt);
  bufpt += cnt;
  skcnt -= cnt;
 }
 return(0);
}
