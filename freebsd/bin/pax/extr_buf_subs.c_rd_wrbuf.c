
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (int,int) ;
 int buf_fill () ;
 int bufend ;
 int bufpt ;
 int memcpy (char*,int,int) ;

int
rd_wrbuf(char *in, int cpcnt)
{
 int res;
 int cnt;
 int incnt = cpcnt;




 while (incnt > 0) {
  cnt = bufend - bufpt;
  if ((cnt <= 0) && ((cnt = buf_fill()) <= 0)) {






   if ((res = cpcnt - incnt) > 0)
    return(res);
   return(cnt);
  }





  cnt = MIN(cnt, incnt);
  memcpy(in, bufpt, cnt);
  bufpt += cnt;
  incnt -= cnt;
  in += cnt;
 }
 return(cpcnt);
}
