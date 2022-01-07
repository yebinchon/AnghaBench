
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int getmaxy (int *) ;

__attribute__((used)) static bool
in_window(WINDOW *win, int scrollamt, int y)
{
    return (y >= scrollamt && y - scrollamt < getmaxy(win));
}
