
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (int,int) ;
 int blksz ;
 int buf_flush (int ) ;
 int bufend ;
 int bufpt ;
 int memcpy (int,char*,int) ;

int
wr_rdbuf(char *out, int outcnt)
{
 int cnt;





 while (outcnt > 0) {
  cnt = bufend - bufpt;
  if ((cnt <= 0) && ((cnt = buf_flush(blksz)) < 0))
   return(-1);



  cnt = MIN(cnt, outcnt);
  memcpy(bufpt, out, cnt);
  bufpt += cnt;
  out += cnt;
  outcnt -= cnt;
 }
 return(0);
}
