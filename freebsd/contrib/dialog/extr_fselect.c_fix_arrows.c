
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ win; scalar_t__ mousex; } ;
typedef TYPE_1__ LIST ;


 int KEY_NEXT ;
 int KEY_NPAGE ;
 int KEY_PPAGE ;
 int KEY_PREVIOUS ;
 scalar_t__ MOUSE_D ;
 int getmaxx (scalar_t__) ;
 int getmaxy (scalar_t__) ;
 int getparyx (scalar_t__,int,int) ;
 int mouse_mkbutton (int,int,int,int ) ;

__attribute__((used)) static void
fix_arrows(LIST * list)
{
    int x;
    int y;
    int top;
    int right;
    int bottom;

    if (list->win != 0) {
 getparyx(list->win, y, x);
 top = y - 1;
 right = getmaxx(list->win);
 bottom = y + getmaxy(list->win);

 mouse_mkbutton(top, x, right,
         ((list->mousex == MOUSE_D)
   ? KEY_PREVIOUS
   : KEY_PPAGE));
 mouse_mkbutton(bottom, x, right,
         ((list->mousex == MOUSE_D)
   ? KEY_NEXT
   : KEY_NPAGE));
    }
}
