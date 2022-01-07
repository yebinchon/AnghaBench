
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* dlg_reallocate_gauge (int *,char const*,char const*,int,int,int) ;

void *
dlg_allocate_gauge(const char *title,
     const char *cprompt,
     int height,
     int width,
     int percent)
{
    return dlg_reallocate_gauge(((void*)0), title, cprompt, height, width, percent);
}
