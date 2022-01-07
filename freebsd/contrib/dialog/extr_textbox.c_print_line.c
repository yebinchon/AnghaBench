
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const hscroll; int text; } ;
typedef TYPE_1__ MY_OBJ ;


 scalar_t__ ERR ;
 int dlg_count_wchars (char*) ;
 int* dlg_index_columns (char*) ;
 int* dlg_index_wchars (char*) ;
 char* get_line (TYPE_1__*) ;
 int getmaxx (int ) ;
 int getyx (int ,int,int) ;
 int waddch (int ,char) ;
 int waddnstr (int ,char*,int const) ;
 scalar_t__ wmove (int ,int,int ) ;

__attribute__((used)) static void
print_line(MY_OBJ * obj, int row, int width)
{
    if (wmove(obj->text, row, 0) != ERR) {
 int i, y, x;
 char *line = get_line(obj);
 const int *cols = dlg_index_columns(line);
 const int *indx = dlg_index_wchars(line);
 int limit = dlg_count_wchars(line);
 int first = 0;
 int last = limit;

 if (width > getmaxx(obj->text))
     width = getmaxx(obj->text);
 --width;

 for (i = 0; i <= limit && cols[i] < obj->hscroll; ++i)
     first = i;

 for (i = first; (i <= limit) && ((cols[i] - cols[first]) < width); ++i)
     last = i;

 (void) waddch(obj->text, ' ');
 (void) waddnstr(obj->text, line + indx[first], indx[last] - indx[first]);

 getyx(obj->text, y, x);
 if (y == row) {
     for (i = 0; i <= width - x; i++) {
  (void) waddch(obj->text, ' ');
     }
 }
    }
}
