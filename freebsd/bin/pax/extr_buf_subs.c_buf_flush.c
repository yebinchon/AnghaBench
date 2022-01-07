
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blkalgn; } ;


 scalar_t__ ar_next () ;
 int ar_write (scalar_t__,int) ;
 int blksz ;
 scalar_t__ buf ;
 scalar_t__ bufend ;
 scalar_t__ bufpt ;
 int exit_val ;
 TYPE_1__* frmt ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int paxwarn (int ,char*) ;
 scalar_t__ wrcnt ;
 scalar_t__ wrlimit ;

int
buf_flush(int bufcnt)
{
 int cnt;
 int push = 0;
 int totcnt = 0;







 if ((wrlimit > 0) && (wrcnt > wrlimit)) {
  paxwarn(0, "User specified archive volume byte limit reached.");
  if (ar_next() < 0) {
   wrcnt = 0;
   exit_val = 1;
   return(-1);
  }
  wrcnt = 0;
  bufend = buf + blksz;
  if (blksz > bufcnt)
   return(0);
  if (blksz < bufcnt)
   push = bufcnt - blksz;
 }




 for (;;) {



  cnt = ar_write(buf, blksz);
  if (cnt == blksz) {



   wrcnt += cnt;
   totcnt += cnt;
   if (push > 0) {




    memcpy(buf, bufend, push);
    bufpt = buf + push;
    if (push >= blksz) {
     push -= blksz;
     continue;
    }
   } else
    bufpt = buf;
   return(totcnt);
  } else if (cnt > 0) {






   totcnt += cnt;
   wrcnt += cnt;
   bufpt = buf + cnt;
   cnt = bufcnt - cnt;
   memcpy(buf, bufpt, cnt);
   bufpt = buf + cnt;
   if (!frmt->blkalgn || ((cnt % frmt->blkalgn) == 0))
    return(totcnt);
   break;
  }




  wrcnt = 0;
  if (ar_next() < 0)
   break;






  bufend = buf + blksz;
  if (blksz > bufcnt)
   return(0);
  if (blksz < bufcnt)
   push = bufcnt - blksz;
 }




 exit_val = 1;
 return(-1);
}
