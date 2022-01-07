
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int win; int * input; } ;
struct TYPE_6__ {TYPE_1__ obj; int last_pos; int hscroll; int old_hscroll; } ;
typedef TYPE_2__ MY_OBJ ;
typedef int FILE ;


 int ftell (int *) ;
 int getyx (int ,int,int) ;
 int print_last_page (TYPE_2__*) ;
 int wmove (int ,int,int) ;
 int wrefresh (int ) ;

__attribute__((used)) static void
repaint_text(MY_OBJ * obj)
{
    FILE *fp = obj->obj.input;
    int cur_y, cur_x;

    getyx(obj->obj.win, cur_y, cur_x);
    obj->old_hscroll = obj->hscroll;

    print_last_page(obj);
    obj->last_pos = ftell(fp);

    (void) wmove(obj->obj.win, cur_y, cur_x);
    wrefresh(obj->obj.win);
}
