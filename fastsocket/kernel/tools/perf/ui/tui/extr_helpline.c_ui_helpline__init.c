
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * helpline_fns ;
 int tui_helpline_fns ;
 int ui_helpline__puts (char*) ;

void ui_helpline__init(void)
{
 helpline_fns = &tui_helpline_fns;
 ui_helpline__puts(" ");
}
