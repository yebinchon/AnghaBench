
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pipe_input; } ;


 int FALSE ;
 TYPE_1__ dialog_state ;
 int dlg_progressbox (char const*,char const*,int,int,int ,scalar_t__) ;

int
dialog_progressbox(const char *title, const char *cprompt, int height, int width)
{
    int result;
    result = dlg_progressbox(title,
        cprompt,
        height,
        width,
        FALSE,
        dialog_state.pipe_input);
    dialog_state.pipe_input = 0;
    return result;
}
