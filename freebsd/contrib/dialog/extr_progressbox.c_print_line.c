
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wide; int text; } ;
typedef TYPE_1__ MY_OBJ ;


 int MARGIN ;
 int MIN (int,int) ;
 scalar_t__ strlen (char const*) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int,int ) ;
 int wprintw (int ,char*,int,char const*) ;

__attribute__((used)) static void
print_line(MY_OBJ * obj, const char *line, int row)
{
    int width = obj->wide - (2 * MARGIN);
    int limit = MIN((int) strlen(line), width - 2);

    (void) wmove(obj->text, row, 0);
    wprintw(obj->text, " %.*s", limit, line);
    wclrtoeol(obj->text);
}
