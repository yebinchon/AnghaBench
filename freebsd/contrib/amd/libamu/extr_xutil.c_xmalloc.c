
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidp ;


 int D_MEM ;
 int XLOG_DEBUG ;
 int XLOG_ERROR ;
 int XLOG_FATAL ;
 int abort () ;
 scalar_t__ amuDebug (int ) ;
 int going_down (int) ;
 scalar_t__ malloc (unsigned int) ;
 int plog (int ,char*,...) ;
 int sleep (int) ;

voidp
xmalloc(int len)
{
  voidp p;
  int retries = 600;




  if (len == 0)
    len = 1;

  do {
    p = (voidp) malloc((unsigned) len);
    if (p) {
      if (amuDebug(D_MEM))
 plog(XLOG_DEBUG, "Allocated size %d; block %p", len, p);
      return p;
    }
    if (retries > 0) {
      plog(XLOG_ERROR, "Retrying memory allocation");
      sleep(1);
    }
  } while (--retries);

  plog(XLOG_FATAL, "Out of memory");
  going_down(1);

  abort();

  return 0;
}
