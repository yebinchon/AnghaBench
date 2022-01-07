
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
 int my_perl ;
 int perl_destruct (int ) ;
 int perl_free (int ) ;

__attribute__((used)) static int perl_stop_script(void)
{
 dSP;
 PUSHMARK(SP);

 if (get_cv("main::trace_end", 0))
  call_pv("main::trace_end", G_DISCARD | G_NOARGS);

 perl_destruct(my_perl);
 perl_free(my_perl);

 return 0;
}
