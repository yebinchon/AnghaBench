
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlg_prev_ok_buttonindex (int,int) ;
 int sTEXT ;

__attribute__((used)) static int
prev_valid_buttonindex(int state, int extra, bool non_editable)
{
    state = dlg_prev_ok_buttonindex(state, extra);
    while (non_editable && state == sTEXT)
 state = dlg_prev_ok_buttonindex(state, sTEXT);
    return state;
}
