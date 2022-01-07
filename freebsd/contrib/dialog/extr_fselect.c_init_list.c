
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int mousex; scalar_t__ data; scalar_t__ allocd; scalar_t__ choice; scalar_t__ offset; scalar_t__ length; int * win; int * par; } ;
typedef TYPE_1__ LIST ;


 int dlg_mouse_mkbigregion (int ,int ,int ,int ,int,int,int,int) ;
 int getbegx (int *) ;
 int getbegy (int *) ;
 int getmaxx (int *) ;
 int getmaxy (int *) ;

__attribute__((used)) static void
init_list(LIST * list, WINDOW *par, WINDOW *win, int mousex)
{
    list->par = par;
    list->win = win;
    list->length = 0;
    list->offset = 0;
    list->choice = 0;
    list->mousex = mousex;
    list->allocd = 0;
    list->data = 0;
    dlg_mouse_mkbigregion(getbegy(win), getbegx(win),
     getmaxy(win), getmaxx(win),
     mousex, 1, 1, 1 );
}
