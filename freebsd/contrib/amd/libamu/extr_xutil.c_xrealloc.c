
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidp ;


 int D_MEM ;
 int XLOG_DEBUG ;
 int XLOG_FATAL ;
 int abort () ;
 scalar_t__ amuDebug (int ) ;
 int going_down (int) ;
 int plog (int ,char*,...) ;
 scalar_t__ realloc (scalar_t__,unsigned int) ;
 scalar_t__ xmalloc (unsigned int) ;

voidp
xrealloc(voidp ptr, int len)
{
  if (amuDebug(D_MEM))
    plog(XLOG_DEBUG, "Reallocated size %d; block %p", len, ptr);

  if (len == 0)
    len = 1;

  if (ptr)
    ptr = (voidp) realloc(ptr, (unsigned) len);
  else
    ptr = (voidp) xmalloc((unsigned) len);

  if (!ptr) {
    plog(XLOG_FATAL, "Out of memory in realloc");
    going_down(1);
    abort();
  }
  return ptr;
}
