
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hsz; scalar_t__ (* id ) (char*,int) ;} ;


 scalar_t__ APPND ;
 int BLKMULT ;
 scalar_t__ act ;
 size_t* ford ;
 TYPE_1__* frmt ;
 TYPE_1__* fsub ;
 char* hdbuf ;
 int memmove (char*,char*,int) ;
 int paxwarn (int,char*) ;
 int pback (char*,int) ;
 scalar_t__ rd_start () ;
 scalar_t__ rd_sync () ;
 int rd_wrbuf (char*,int) ;
 scalar_t__ stub1 (char*,int) ;

__attribute__((used)) static int
get_arc(void)
{
 int i;
 int hdsz = 0;
 int res;
 int minhd = BLKMULT;
 char *hdend;
 int notice = 0;





 for (i = 0; ford[i] >= 0; ++i) {
  if (fsub[ford[i]].hsz < minhd)
   minhd = fsub[ford[i]].hsz;
 }
 if (rd_start() < 0)
  return(-1);
 res = BLKMULT;
 hdsz = 0;
 hdend = hdbuf;
 for(;;) {
  for (;;) {



   i = rd_wrbuf(hdend, res);
   if (i > 0)
    hdsz += i;
   if (hdsz >= minhd)
    break;




   if ((i == 0) || (rd_sync() < 0))
    goto out;







   res = BLKMULT;
   hdsz = 0;
   hdend = hdbuf;
   if (!notice) {
    if (act == APPND)
     return(-1);
    paxwarn(1,"Cannot identify format. Searching...");
    ++notice;
   }
  }
  for (i = 0; ford[i] >= 0; ++i) {
   if ((*fsub[ford[i]].id)(hdbuf, hdsz) < 0)
    continue;
   frmt = &(fsub[ford[i]]);







   pback(hdbuf, hdsz);
   return(0);
  }





  if (!notice) {
   if (act == APPND)
    return(-1);
   paxwarn(1, "Cannot identify format. Searching...");
   ++notice;
  }







  if (--hdsz > 0) {
   memmove(hdbuf, hdbuf+1, hdsz);
   res = BLKMULT - hdsz;
   hdend = hdbuf + hdsz;
  } else {
   res = BLKMULT;
   hdend = hdbuf;
   hdsz = 0;
  }
 }

    out:



 paxwarn(1, "Sorry, unable to determine archive format.");
 return(-1);
}
