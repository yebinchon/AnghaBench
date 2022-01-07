
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLS ;
 int LINES ;
 int dlg_attr_clear (int ,int ,int ,int ) ;
 int screen_attr ;
 int stdscr ;

void
dlg_clear(void)
{
    dlg_attr_clear(stdscr, LINES, COLS, screen_attr);
}
