
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int clearok (int ,int ) ;
 int info_win ;
 scalar_t__ info_window ;
 int midscreen (int ,int ) ;
 int paint_info_win () ;
 int point ;
 int scr_vert ;
 int text_win ;

void
redraw()
{
 if (info_window)
        {
                clearok(info_win, TRUE);
         paint_info_win();
        }
        else
  clearok(text_win, TRUE);
 midscreen(scr_vert, point);
}
