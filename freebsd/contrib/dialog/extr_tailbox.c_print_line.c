
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int MY_OBJ ;


 int MIN (int,int) ;
 char* get_line (int *) ;
 int getyx (int *,int,int) ;
 scalar_t__ strlen (char*) ;
 int waddch (int *,char) ;
 int waddnstr (int *,char*,int ) ;
 int wmove (int *,int,int ) ;

__attribute__((used)) static void
print_line(MY_OBJ * obj, WINDOW *win, int row, int width)
{
    int i, y, x;
    char *line = get_line(obj);

    (void) wmove(win, row, 0);
    (void) waddch(win, ' ');
    (void) waddnstr(win, line, MIN((int) strlen(line), width - 2));

    getyx(win, y, x);
    (void) y;

    for (i = 0; i < width - x; i++)
 (void) waddch(win, ' ');
}
