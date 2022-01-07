
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atyfb_par {int blitter_may_be_busy; } ;
typedef int s16 ;


 int DST_HEIGHT_WIDTH ;
 int DST_Y_X ;
 int aty_st_le32 (int ,int,struct atyfb_par*) ;
 int wait_for_fifo (int,struct atyfb_par*) ;

__attribute__((used)) static inline void draw_rect(s16 x, s16 y, u16 width, u16 height,
        struct atyfb_par *par)
{

 wait_for_fifo(2, par);
 aty_st_le32(DST_Y_X, (x << 16) | y, par);
 aty_st_le32(DST_HEIGHT_WIDTH, (width << 16) | height, par);
 par->blitter_may_be_busy = 1;
}
