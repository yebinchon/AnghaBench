
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {unsigned long we_cycle_time; } ;
struct TYPE_8__ {unsigned long pix_tx_time; int line_upd_time; int vsync_only; TYPE_3__* extif; TYPE_2__* fbdev; TYPE_1__ reg_timings; } ;
struct TYPE_7__ {unsigned long (* get_max_tx_rate ) () ;int (* setup_tearsync ) (int,int,int,int,int,int) ;} ;
struct TYPE_6__ {int dev; } ;


 int BLIZZARD_HDISP ;
 int BLIZZARD_HNDP ;
 int BLIZZARD_HSW ;
 int BLIZZARD_NDISP_CTRL_STATUS ;
 int BLIZZARD_VDISP0 ;
 int BLIZZARD_VDISP1 ;
 int BLIZZARD_VNDP ;
 int BLIZZARD_VSW ;
 int EDOM ;
 TYPE_4__ blizzard ;
 int blizzard_read_reg (int ) ;
 int blizzard_write_reg (int ,int) ;
 int dev_dbg (int ,char*,int,...) ;
 unsigned long stub1 () ;
 int stub2 (int,int,int,int,int,int) ;

__attribute__((used)) static int setup_tearsync(unsigned long pix_clk, int extif_div)
{
 int hdisp, vdisp;
 int hndp, vndp;
 int hsw, vsw;
 int hs, vs;
 int hs_pol_inv, vs_pol_inv;
 int use_hsvs, use_ndp;
 u8 b;

 hsw = blizzard_read_reg(BLIZZARD_HSW);
 vsw = blizzard_read_reg(BLIZZARD_VSW);
 hs_pol_inv = !(hsw & 0x80);
 vs_pol_inv = !(vsw & 0x80);
 hsw = hsw & 0x7f;
 vsw = vsw & 0x3f;

 hdisp = blizzard_read_reg(BLIZZARD_HDISP) * 8;
 vdisp = blizzard_read_reg(BLIZZARD_VDISP0) +
  ((blizzard_read_reg(BLIZZARD_VDISP1) & 0x3) << 8);

 hndp = blizzard_read_reg(BLIZZARD_HNDP) & 0x3f;
 vndp = blizzard_read_reg(BLIZZARD_VNDP);


 blizzard.pix_tx_time = blizzard.reg_timings.we_cycle_time;
 if (blizzard.extif->get_max_tx_rate != ((void*)0)) {



  unsigned long min_tx_time;
  unsigned long max_tx_rate = blizzard.extif->get_max_tx_rate();

  dev_dbg(blizzard.fbdev->dev, "max_tx_rate %ld HZ\n",
   max_tx_rate);
  min_tx_time = 1000000000 / (max_tx_rate / 1000);
  if (blizzard.pix_tx_time < min_tx_time)
   blizzard.pix_tx_time = min_tx_time;
 }


 blizzard.line_upd_time = (hdisp + hndp) * 1000000 / (pix_clk / 1000);
 blizzard.line_upd_time *= 1000;
 if (hdisp * blizzard.pix_tx_time > blizzard.line_upd_time)


  use_hsvs = 1;
 else

  use_hsvs = 0;

 if (use_hsvs && (hs_pol_inv || vs_pol_inv)) {


  use_ndp = 1;
  hs_pol_inv = 0;
  vs_pol_inv = 0;
  hs = hndp;
  vs = vndp;
 } else {


  use_ndp = 0;
  hs = hsw;
  vs = vsw;
  if (!use_hsvs) {
   hs_pol_inv = 0;
   vs_pol_inv = 0;
  }
 }

 hs = hs * 1000000 / (pix_clk / 1000);
 hs *= 1000;

 vs = vs * (hdisp + hndp) * 1000000 / (pix_clk / 1000);
 vs *= 1000;

 if (vs <= hs)
  return -EDOM;

 vs = hs * 12 / 10;

 if (hs > 10000)
  hs = 10000;

 b = blizzard_read_reg(BLIZZARD_NDISP_CTRL_STATUS);
 b &= ~0x3;
 b |= use_hsvs ? 1 : 0;
 b |= (use_ndp && use_hsvs) ? 0 : 2;
 blizzard_write_reg(BLIZZARD_NDISP_CTRL_STATUS, b);

 blizzard.vsync_only = !use_hsvs;

 dev_dbg(blizzard.fbdev->dev,
  "pix_clk %ld HZ pix_tx_time %ld ps line_upd_time %ld ps\n",
  pix_clk, blizzard.pix_tx_time, blizzard.line_upd_time);
 dev_dbg(blizzard.fbdev->dev,
  "hs %d ps vs %d ps mode %d vsync_only %d\n",
  hs, vs, b & 0x3, !use_hsvs);

 return blizzard.extif->setup_tearsync(1, hs, vs,
           hs_pol_inv, vs_pol_inv,
           extif_div);
}
