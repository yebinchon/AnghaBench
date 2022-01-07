
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int pix_tx_time; int line_upd_time; TYPE_1__* extif; scalar_t__ vsync_only; } ;
struct TYPE_3__ {int (* enable_tearsync ) (int,int) ;} ;


 int BLIZZARD_NDISP_CTRL_STATUS ;
 TYPE_2__ blizzard ;
 int blizzard_read_reg (int ) ;
 int blizzard_write_reg (int ,int) ;
 scalar_t__ likely (int) ;
 int stub1 (int,int) ;
 int stub2 (int,int) ;
 int stub3 (int,int) ;
 int stub4 (int,int) ;

__attribute__((used)) static void enable_tearsync(int y, int width, int height, int screen_height,
       int out_height, int force_vsync)
{
 u8 b;

 b = blizzard_read_reg(BLIZZARD_NDISP_CTRL_STATUS);
 b |= 1 << 3;
 blizzard_write_reg(BLIZZARD_NDISP_CTRL_STATUS, b);

 if (likely(blizzard.vsync_only || force_vsync)) {
  blizzard.extif->enable_tearsync(1, 0);
  return;
 }

 if (width * blizzard.pix_tx_time < blizzard.line_upd_time) {
  blizzard.extif->enable_tearsync(1, 0);
  return;
 }

 if ((width * blizzard.pix_tx_time / 1000) * height <
     (y + out_height) * (blizzard.line_upd_time / 1000)) {
  blizzard.extif->enable_tearsync(1, 0);
  return;
 }

 blizzard.extif->enable_tearsync(1, y + 1);
}
