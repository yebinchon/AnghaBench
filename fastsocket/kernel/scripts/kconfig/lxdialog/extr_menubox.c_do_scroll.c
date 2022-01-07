
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int FALSE ;
 int TRUE ;
 int scrollok (int *,int ) ;
 int wrefresh (int *) ;
 int wscrl (int *,int) ;

__attribute__((used)) static void do_scroll(WINDOW *win, int *scroll, int n)
{

 scrollok(win, TRUE);
 wscrl(win, n);
 scrollok(win, FALSE);
 *scroll = *scroll + n;
 wrefresh(win);
}
