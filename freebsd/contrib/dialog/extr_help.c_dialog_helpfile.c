
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_helpfile; void* nook; void* extra_button; void* help_button; int * ok_label; int * no_label; } ;
typedef int DIALOG_VARS ;


 int DLG_EXIT_ERROR ;
 void* FALSE ;
 scalar_t__ TRUE ;
 int dialog_textbox (char const*,char const*,int,int) ;
 TYPE_1__ dialog_vars ;
 int dlg_restore_vars (int *) ;
 int dlg_save_vars (int *) ;

int
dialog_helpfile(const char *title,
  const char *file,
  int height,
  int width)
{
    int result = DLG_EXIT_ERROR;
    DIALOG_VARS save;

    if (!dialog_vars.in_helpfile && file != 0 && *file != '\0') {
 dlg_save_vars(&save);

 dialog_vars.no_label = ((void*)0);
 dialog_vars.ok_label = ((void*)0);
 dialog_vars.help_button = FALSE;
 dialog_vars.extra_button = FALSE;
 dialog_vars.nook = FALSE;

 dialog_vars.in_helpfile = TRUE;

 result = dialog_textbox(title, file, height, width);

 dlg_restore_vars(&save);
    }
    return (result);
}
