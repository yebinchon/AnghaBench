
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bfin_bf54xfb_info {int dummy; } ;


 int DLENGTH ;
 int DLEN_18 ;
 int DLEN_24 ;
 int EPPI_CLIP ;
 int EPPI_CONTROL ;
 int EPPI_FRAME ;
 int EPPI_FS1P_AVPL ;
 int EPPI_FS1W_HBL ;
 int EPPI_FS2P_LAVF ;
 int EPPI_FS2W_LVB ;
 int EPPI_HCOUNT ;
 int EPPI_HDELAY ;
 int EPPI_LINE ;
 int EPPI_VCOUNT ;
 int EPPI_VDELAY ;
 int LCD_CLK ;
 int RGB_FMT_EN ;
 int bfin_write_EPPI0_CLIP (int ) ;
 int bfin_write_EPPI0_CLKDIV (int ) ;
 int bfin_write_EPPI0_CONTROL (int) ;
 int bfin_write_EPPI0_FRAME (int ) ;
 int bfin_write_EPPI0_FS1P_AVPL (int ) ;
 int bfin_write_EPPI0_FS1W_HBL (int ) ;
 int bfin_write_EPPI0_FS2P_LAVF (int ) ;
 int bfin_write_EPPI0_FS2W_LVB (int ) ;
 int bfin_write_EPPI0_HCOUNT (int ) ;
 int bfin_write_EPPI0_HDELAY (int ) ;
 int bfin_write_EPPI0_LINE (int ) ;
 int bfin_write_EPPI0_VCOUNT (int ) ;
 int bfin_write_EPPI0_VDELAY (int ) ;
 int get_eppi_clkdiv (int ) ;
 scalar_t__ outp_rgb666 ;

__attribute__((used)) static void config_ppi(struct bfin_bf54xfb_info *fbi)
{

 u16 eppi_clkdiv = get_eppi_clkdiv(LCD_CLK);

 bfin_write_EPPI0_FS1W_HBL(EPPI_FS1W_HBL);
 bfin_write_EPPI0_FS1P_AVPL(EPPI_FS1P_AVPL);
 bfin_write_EPPI0_FS2W_LVB(EPPI_FS2W_LVB);
 bfin_write_EPPI0_FS2P_LAVF(EPPI_FS2P_LAVF);
 bfin_write_EPPI0_CLIP(EPPI_CLIP);

 bfin_write_EPPI0_FRAME(EPPI_FRAME);
 bfin_write_EPPI0_LINE(EPPI_LINE);

 bfin_write_EPPI0_HCOUNT(EPPI_HCOUNT);
 bfin_write_EPPI0_HDELAY(EPPI_HDELAY);
 bfin_write_EPPI0_VCOUNT(EPPI_VCOUNT);
 bfin_write_EPPI0_VDELAY(EPPI_VDELAY);

 bfin_write_EPPI0_CLKDIV(eppi_clkdiv);





 if (outp_rgb666)
  bfin_write_EPPI0_CONTROL((EPPI_CONTROL & ~DLENGTH) | DLEN_18 |
      RGB_FMT_EN);
 else
  bfin_write_EPPI0_CONTROL(((EPPI_CONTROL & ~DLENGTH) | DLEN_24) &
      ~RGB_FMT_EN);


}
