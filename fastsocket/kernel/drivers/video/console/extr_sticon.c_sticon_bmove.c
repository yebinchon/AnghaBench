
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_3__ {int cursor_y; int cursor_x; } ;


 int CM_ERASE ;
 TYPE_1__* p ;
 int sti_bmove (int ,int,int,int,int,int,int) ;
 int sticon_cursor (TYPE_1__*,int ) ;
 int sticon_sti ;

__attribute__((used)) static void sticon_bmove(struct vc_data *conp, int sy, int sx,
 int dy, int dx, int height, int width)
{
    if (!width || !height)
     return;
    sti_bmove(sticon_sti, sy, sx, dy, dx, height, width);
}
