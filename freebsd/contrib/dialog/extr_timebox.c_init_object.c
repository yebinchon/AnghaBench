
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int x; int y; int width; int height; int period; int value; scalar_t__ window; int * parent; } ;
typedef TYPE_1__ BOX ;


 int TRUE ;
 scalar_t__ derwin (int *,int,int,int,int) ;
 int dlg_mouse_mkregion (int,int,int,int,int) ;
 int dlg_mouse_setbase (int ,int ) ;
 int getbegx (int *) ;
 int getbegy (int *) ;
 int keypad (scalar_t__,int ) ;

__attribute__((used)) static int
init_object(BOX * data,
     WINDOW *parent,
     int x, int y,
     int width, int height,
     int period, int value,
     int code)
{
    (void) code;

    data->parent = parent;
    data->x = x;
    data->y = y;
    data->width = width;
    data->height = height;
    data->period = period;
    data->value = value % period;

    data->window = derwin(data->parent,
     data->height, data->width,
     data->y, data->x);
    if (data->window == 0)
 return -1;
    (void) keypad(data->window, TRUE);

    dlg_mouse_setbase(getbegx(parent), getbegy(parent));
    dlg_mouse_mkregion(y, x, height, width, code);

    return 0;
}
