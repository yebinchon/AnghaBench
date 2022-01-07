
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * progress_fns ;
 int tui_progress_fns ;

void ui_progress__init(void)
{
 progress_fns = &tui_progress_fns;
}
