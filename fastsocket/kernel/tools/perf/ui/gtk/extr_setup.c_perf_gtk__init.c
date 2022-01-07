
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gtk_init_check (int *,int *) ;
 int perf_error__register (int *) ;
 int perf_gtk__init_helpline () ;
 int perf_gtk__init_hpp () ;
 int perf_gtk__init_progress () ;
 int perf_gtk_eops ;

int perf_gtk__init(void)
{
 perf_error__register(&perf_gtk_eops);
 perf_gtk__init_helpline();
 perf_gtk__init_progress();
 perf_gtk__init_hpp();

 return gtk_init_check(((void*)0), ((void*)0)) ? 0 : -1;
}
