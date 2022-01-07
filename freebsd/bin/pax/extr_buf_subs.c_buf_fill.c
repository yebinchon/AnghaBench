
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ar_next () ;
 int ar_read (void*,int ) ;
 int blksz ;
 void* buf ;
 void* bufend ;
 void* bufpt ;
 int exit_val ;
 int * frmt ;
 scalar_t__ rdcnt ;

int
buf_fill(void)
{
 int cnt;
 static int fini = 0;

 if (fini)
  return(0);

 for(;;) {




  if ((cnt = ar_read(buf, blksz)) > 0) {
   bufpt = buf;
   bufend = buf + cnt;
   rdcnt += cnt;
   return(cnt);
  }







  if (cnt < 0)
   break;
  if (frmt == ((void*)0) || ar_next() < 0) {
   fini = 1;
   return(0);
  }
  rdcnt = 0;
 }
 exit_val = 1;
 return(-1);
}
