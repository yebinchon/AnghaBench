
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int text; } ;
typedef TYPE_1__ MY_OBJ ;


 int print_line (TYPE_1__*,int ,int,int) ;
 int wnoutrefresh (int ) ;

__attribute__((used)) static void
print_page(MY_OBJ * obj, int height, int width)
{
    int i;

    for (i = 0; i < height; i++) {
 print_line(obj, obj->text, i, width);
    }
    (void) wnoutrefresh(obj->text);
}
