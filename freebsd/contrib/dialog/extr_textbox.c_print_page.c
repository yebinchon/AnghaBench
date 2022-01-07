
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int text; scalar_t__ end_reached; scalar_t__ page_length; } ;
typedef TYPE_1__ MY_OBJ ;


 int dlg_trace_win (int ) ;
 int print_line (TYPE_1__*,int,int) ;
 int wnoutrefresh (int ) ;

__attribute__((used)) static void
print_page(MY_OBJ * obj, int height, int width)
{
    int i, passed_end = 0;

    obj->page_length = 0;
    for (i = 0; i < height; i++) {
 print_line(obj, i, width);
 if (!passed_end)
     obj->page_length++;
 if (obj->end_reached && !passed_end)
     passed_end = 1;
    }
    (void) wnoutrefresh(obj->text);
    dlg_trace_win(obj->text);
}
