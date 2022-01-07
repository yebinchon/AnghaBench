
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dlg_ok_buttoncode (int) ;

int
dlg_prev_ok_buttonindex(int current, int extra)
{
    int result = current - 1;

    if (result < extra) {
 for (result = 0; dlg_ok_buttoncode(result + 1) >= 0; ++result) {
     ;
 }
    }
    return result;
}
