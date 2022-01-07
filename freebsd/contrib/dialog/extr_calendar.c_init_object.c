
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int x; int y; int width; int height; int week_start; scalar_t__ window; int * parent; int box_draw; } ;
typedef int BOX_DRAW ;
typedef TYPE_1__ BOX ;


 scalar_t__ KEY_MAX ;
 scalar_t__ MON_WIDE ;
 int TRUE ;
 scalar_t__ derwin (int *,int,int,int,int) ;
 int dlg_mouse_mkbigregion (int,scalar_t__,int,scalar_t__,scalar_t__,int,scalar_t__,int) ;
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
     BOX_DRAW box_draw,
     int key_offset,
     int code)
{
    data->parent = parent;
    data->x = x;
    data->y = y;
    data->width = width;
    data->height = height;
    data->box_draw = box_draw;
    data->week_start = key_offset;

    data->window = derwin(data->parent,
     data->height, data->width,
     data->y, data->x);
    if (data->window == 0)
 return -1;
    (void) keypad(data->window, TRUE);

    dlg_mouse_setbase(getbegx(parent), getbegy(parent));
    if (code == 'D') {
 dlg_mouse_mkbigregion(y + 1, x + MON_WIDE, height - 1, width - MON_WIDE,
         KEY_MAX + key_offset, 1, MON_WIDE, 3);
    } else {
 dlg_mouse_mkregion(y, x, height, width, code);
    }

    return 0;
}
