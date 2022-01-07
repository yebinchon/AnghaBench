
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bg_task; int win; } ;
struct TYPE_7__ {int text; TYPE_1__ obj; } ;
typedef TYPE_2__ MY_OBJ ;


 int MARGIN ;
 int getmaxx (int ) ;
 int getmaxy (int ) ;
 int last_lines (TYPE_2__*,int) ;
 int print_page (TYPE_2__*,int,int) ;

__attribute__((used)) static void
print_last_page(MY_OBJ * obj)
{
    int high = getmaxy(obj->obj.win) - (2 * MARGIN + (obj->obj.bg_task ? 1 : 3));
    int wide = getmaxx(obj->text);

    last_lines(obj, high);
    print_page(obj, high, wide);
}
