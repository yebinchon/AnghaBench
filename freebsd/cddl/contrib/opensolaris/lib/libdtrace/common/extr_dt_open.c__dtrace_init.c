
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FP_PE ;
 scalar_t__ RD_OK ;
 int _dtrace_debug ;
 scalar_t__ _dtrace_rdvers ;
 int fpsetprec (int ) ;
 int * getenv (char*) ;
 scalar_t__ rd_init (scalar_t__) ;

void
_dtrace_init(void)
{
 _dtrace_debug = getenv("DTRACE_DEBUG") != ((void*)0);

 for (; _dtrace_rdvers > 0; _dtrace_rdvers--) {
  if (rd_init(_dtrace_rdvers) == RD_OK)
   break;
 }




}
