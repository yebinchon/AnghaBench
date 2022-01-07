
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tab_correct; } ;


 int TAB ;
 TYPE_1__ dialog_vars ;
 char* strchr (char*,int ) ;

void
dlg_tab_correct_str(char *prompt)
{
    char *ptr;

    if (dialog_vars.tab_correct) {
 while ((ptr = strchr(prompt, TAB)) != ((void*)0)) {
     *ptr = ' ';
     prompt = ptr;
 }
    }
}
