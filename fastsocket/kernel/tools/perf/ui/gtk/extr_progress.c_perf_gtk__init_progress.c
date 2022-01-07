
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gtk_progress_fns ;
 int * progress_fns ;

void perf_gtk__init_progress(void)
{
 progress_fns = &gtk_progress_fns;
}
