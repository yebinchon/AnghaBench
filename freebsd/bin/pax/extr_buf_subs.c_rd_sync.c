
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ APPND ;
 scalar_t__ act ;
 scalar_t__ ar_next () ;
 scalar_t__ ar_rdsync () ;
 int ar_read (void*,int ) ;
 int blksz ;
 void* buf ;
 void* bufend ;
 void* bufpt ;
 int maxflt ;
 int paxwarn (int,char*,...) ;
 scalar_t__ rdcnt ;

int
rd_sync(void)
{
 int errcnt = 0;
 int res;




 if (maxflt == 0)
  return(-1);
 if (act == APPND) {
  paxwarn(1, "Unable to append when there are archive read errors.");
  return(-1);
 }




 if (ar_rdsync() < 0) {
  if (ar_next() < 0)
   return(-1);
  else
   rdcnt = 0;
 }

 for (;;) {
  if ((res = ar_read(buf, blksz)) > 0) {



   bufpt = buf;
   bufend = buf + res;
   rdcnt += res;
   return(0);
  }
  if ((maxflt > 0) && (++errcnt > maxflt))
   paxwarn(0,"Archive read error limit (%d) reached",maxflt);
  else if (ar_rdsync() == 0)
   continue;
  if (ar_next() < 0)
   break;
  rdcnt = 0;
  errcnt = 0;
 }
 return(-1);
}
