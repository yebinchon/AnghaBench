
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int text; } ;
typedef TYPE_1__ MY_OBJ ;


 int getmaxy (int ) ;
 int print_line (TYPE_1__*,int ,int) ;
 int wrefresh (int ) ;
 int wrote_data (TYPE_1__*,int) ;
 int wrote_size (TYPE_1__*,int) ;

__attribute__((used)) static int
reprint_lines(MY_OBJ * obj, int buttons)
{
    int want = getmaxy(obj->text) - (buttons ? 2 : 0);
    int have = wrote_size(obj, want);
    int n;
    for (n = 0; n < have; ++n) {
 print_line(obj, wrote_data(obj, have - n), n);
    }
    (void) wrefresh(obj->text);
    return have;
}
