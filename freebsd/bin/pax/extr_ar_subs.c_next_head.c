
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hsz; scalar_t__ (* rd ) (int *,char*) ;int (* trail_tar ) (char*,int,int*) ;scalar_t__ (* trail_cpio ) (int *) ;scalar_t__ inhead; } ;
typedef int ARCHD ;


 scalar_t__ APPND ;
 scalar_t__ act ;
 int ar_drain () ;
 int flcnt ;
 TYPE_1__* frmt ;
 char* hdbuf ;
 int memmove (char*,char*,int) ;
 int paxwarn (int,char*) ;
 scalar_t__ rd_sync () ;
 int rd_wrbuf (char*,int) ;
 scalar_t__ stub1 (int *,char*) ;
 int stub2 (char*,int,int*) ;
 scalar_t__ stub3 (int *) ;

__attribute__((used)) static int
next_head(ARCHD *arcn)
{
 int ret;
 char *hdend;
 int res;
 int shftsz;
 int hsz;
 int in_resync = 0;
 int cnt = 0;
 int first = 1;





 res = hsz = frmt->hsz;
 hdend = hdbuf;
 shftsz = hsz - 1;
 for(;;) {




  for (;;) {
   if ((ret = rd_wrbuf(hdend, res)) == res)
    break;
   if (first && ret == 0)
    return(-1);
   first = 0;





   if ((ret == 0) || (rd_sync() < 0)) {
    paxwarn(1,"Premature end of file on archive read");
    return(-1);
   }
   if (!in_resync) {
    if (act == APPND) {
     paxwarn(1,
       "Archive I/O error, cannot continue");
     return(-1);
    }
    paxwarn(1,"Archive I/O error. Trying to recover.");
    ++in_resync;
   }




   res = hsz;
   hdend = hdbuf;
  }
  if ((*frmt->rd)(arcn, hdbuf) == 0)
   break;

  if (!frmt->inhead) {



   if ((ret = (*frmt->trail_tar)(hdbuf,in_resync,&cnt)) == 0){



    ar_drain();
    return(-1);
   }

   if (ret == 1) {






    res = hsz;
    hdend = hdbuf;
    continue;
   }
  }
  if (!in_resync) {
   if (act == APPND) {
    paxwarn(1,"Unable to append, archive header flaw");
    return(-1);
   }
   paxwarn(1,"Invalid header, starting valid header search.");
   ++in_resync;
  }
  memmove(hdbuf, hdbuf+1, shftsz);
  res = 1;
  hdend = hdbuf + shftsz;
 }





 if (frmt->inhead && ((*frmt->trail_cpio)(arcn) == 0)) {



  ar_drain();
  return(-1);
 }

 ++flcnt;
 return(0);
}
