
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_DISCARD ;
 int G_NOARGS ;
 int PUSHMARK (int ) ;
 int SP ;
 int call_pv (char*,int) ;
 int dSP ;
 scalar_t__ get_cv (char*,int ) ;

__attribute__((used)) static void run_start_sub(void)
{
 dSP;
 PUSHMARK(SP);

 if (get_cv("main::trace_begin", 0))
  call_pv("main::trace_begin", G_DISCARD | G_NOARGS);
}
