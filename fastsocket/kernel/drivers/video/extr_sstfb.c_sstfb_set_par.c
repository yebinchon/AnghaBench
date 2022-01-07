
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int (* set_pll ) (struct fb_info*,int *,int ) ;int (* set_vidmod ) (struct fb_info*,int ) ;} ;
struct sstfb_par {int hSyncOff; int yDim; int vSyncOn; int vSyncOff; int vBackPorch; int tiles_in_X; int pll; TYPE_2__ dac_sw; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int xres; int right_margin; int left_margin; int yres; int vsync_len; int lower_margin; int upper_margin; int vmode; int hsync_len; int sync; int bits_per_pixel; int pixclock; } ;
struct fb_info {TYPE_1__ var; struct sstfb_par* par; } ;


 int BACKPORCH ;
 int CLIP_LEFT_RIGHT ;
 int CLIP_LOWY_HIGHY ;
 int EINVAL ;
 int EN_BLANK_OE ;
 int EN_CLIPPING ;
 int EN_DATA_OE ;
 int EN_DCLK_OE ;
 int EN_DRAM_REFRESH ;
 int EN_HVSYNC_OE ;
 int EN_PXL_PIPELINE ;
 int EN_RGB_WRITE ;
 int FBIINIT0 ;
 int FBIINIT1 ;
 int FBIINIT2 ;
 int FBIINIT3 ;
 int FBIINIT5 ;
 int FBIINIT5_MASK ;
 int FBIINIT6 ;
 int FBI_RESET ;
 int FBZMODE ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int FIFO_RESET ;
 int HSYNC ;
 int HSYNC_HIGH ;
 int INTERLACE ;
 scalar_t__ IS_VOODOO2 (struct sstfb_par*) ;
 int LFBMODE ;
 int LFB_565 ;
 int LFB_BYTE_SWIZZLE_RD ;
 int LFB_BYTE_SWIZZLE_WR ;
 int LFB_WORD_SWIZZLE_RD ;
 int LFB_WORD_SWIZZLE_WR ;
 int NOPCMD ;
 int PCI_EN_FIFO_WR ;
 int PCI_EN_INIT_WR ;
 int PCI_INIT_ENABLE ;
 int PCI_REMAP_DAC ;
 int PICOS2KHZ (int ) ;
 int SEL_INPUT_VCLK_2X ;
 int SEL_SOURCE_VCLK_2X_SEL ;
 int TILES_IN_X_LSB_SHIFT ;
 int TILES_IN_X_MSB_SHIFT ;
 int TILES_IN_X_SHIFT ;
 int VDOUBLESCAN ;
 int VIDEODIMENSIONS ;
 int VIDEO_MASK ;
 int VIDEO_RESET ;
 int VID_CLOCK ;
 int VSYNC ;
 int VSYNC_HIGH ;
 scalar_t__ clipping ;
 int f_ddprintk (char*,...) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int sst_calc_pll (int ,unsigned int*,int *) ;
 int sst_read (int ) ;
 int sst_set_bits (int ,int) ;
 int sst_unset_bits (int ,int) ;
 int sst_wait_idle () ;
 int sst_write (int ,int) ;
 int stub1 (struct fb_info*,int ) ;
 int stub2 (struct fb_info*,int *,int ) ;

__attribute__((used)) static int sstfb_set_par(struct fb_info *info)
{
 struct sstfb_par *par = info->par;
 u32 lfbmode, fbiinit1, fbiinit2, fbiinit3, fbiinit5, fbiinit6=0;
 struct pci_dev *sst_dev = par->dev;
 unsigned int freq;
 int ntiles;

 par->hSyncOff = info->var.xres + info->var.right_margin + info->var.left_margin;

 par->yDim = info->var.yres;
 par->vSyncOn = info->var.vsync_len;
 par->vSyncOff = info->var.yres + info->var.lower_margin + info->var.upper_margin;
 par->vBackPorch = info->var.upper_margin;


 sst_calc_pll(PICOS2KHZ(info->var.pixclock), &freq, &par->pll);

 if (info->var.vmode & FB_VMODE_INTERLACED)
  par->vBackPorch += (par->vBackPorch % 2);
 if (info->var.vmode & FB_VMODE_DOUBLE) {
  par->vBackPorch <<= 1;
  par->yDim <<=1;
  par->vSyncOn <<=1;
  par->vSyncOff <<=1;
 }

 if (IS_VOODOO2(par)) {


  par->tiles_in_X = (info->var.xres + 63 ) / 64 * 2;
 } else {

  par->tiles_in_X = (info->var.xres + 63 ) / 64;
 }

 f_ddprintk("hsync_len hSyncOff vsync_len vSyncOff\n");
 f_ddprintk("%-7d %-8d %-7d %-8d\n",
            info->var.hsync_len, par->hSyncOff,
            par->vSyncOn, par->vSyncOff);
 f_ddprintk("left_margin upper_margin xres yres Freq\n");
 f_ddprintk("%-10d %-10d %-4d %-4d %-8ld\n",
            info->var.left_margin, info->var.upper_margin,
            info->var.xres, info->var.yres, PICOS2KHZ(info->var.pixclock));

 sst_write(NOPCMD, 0);
 sst_wait_idle();
 pci_write_config_dword(sst_dev, PCI_INIT_ENABLE, PCI_EN_INIT_WR);
 sst_set_bits(FBIINIT1, VIDEO_RESET);
 sst_set_bits(FBIINIT0, FBI_RESET | FIFO_RESET);
 sst_unset_bits(FBIINIT2, EN_DRAM_REFRESH);
 sst_wait_idle();



 sst_write(BACKPORCH, par->vBackPorch << 16 | (info->var.left_margin - 2));
 sst_write(VIDEODIMENSIONS, par->yDim << 16 | (info->var.xres - 1));
 sst_write(HSYNC, (par->hSyncOff - 1) << 16 | (info->var.hsync_len - 1));
 sst_write(VSYNC, par->vSyncOff << 16 | par->vSyncOn);

 fbiinit2 = sst_read(FBIINIT2);
 fbiinit3 = sst_read(FBIINIT3);


 pci_write_config_dword(sst_dev, PCI_INIT_ENABLE,
                        PCI_EN_INIT_WR | PCI_REMAP_DAC );

 par->dac_sw.set_vidmod(info, info->var.bits_per_pixel);


 par->dac_sw.set_pll(info, &par->pll, VID_CLOCK);


 pci_write_config_dword(sst_dev, PCI_INIT_ENABLE,
                        PCI_EN_INIT_WR);


 sst_write(FBIINIT2,fbiinit2);
 sst_write(FBIINIT3,fbiinit3);

 fbiinit1 = (sst_read(FBIINIT1) & VIDEO_MASK)
             | EN_DATA_OE
             | EN_BLANK_OE
             | EN_HVSYNC_OE
             | EN_DCLK_OE

             | SEL_INPUT_VCLK_2X

                                       ;
 ntiles = par->tiles_in_X;
 if (IS_VOODOO2(par)) {
  fbiinit1 |= ((ntiles & 0x20) >> 5) << TILES_IN_X_MSB_SHIFT
              | ((ntiles & 0x1e) >> 1) << TILES_IN_X_SHIFT;




  fbiinit6 = (ntiles & 0x1) << TILES_IN_X_LSB_SHIFT;
 }
 else
  fbiinit1 |= ntiles << TILES_IN_X_SHIFT;

 switch (info->var.bits_per_pixel) {
 case 16:
  fbiinit1 |= SEL_SOURCE_VCLK_2X_SEL;
  break;
 default:
  return -EINVAL;
 }
 sst_write(FBIINIT1, fbiinit1);
 if (IS_VOODOO2(par)) {
  sst_write(FBIINIT6, fbiinit6);
  fbiinit5=sst_read(FBIINIT5) & FBIINIT5_MASK ;
  if (info->var.vmode & FB_VMODE_INTERLACED)
   fbiinit5 |= INTERLACE;
  if (info->var.vmode & FB_VMODE_DOUBLE)
   fbiinit5 |= VDOUBLESCAN;
  if (info->var.sync & FB_SYNC_HOR_HIGH_ACT)
   fbiinit5 |= HSYNC_HIGH;
  if (info->var.sync & FB_SYNC_VERT_HIGH_ACT)
   fbiinit5 |= VSYNC_HIGH;
  sst_write(FBIINIT5, fbiinit5);
 }
 sst_wait_idle();
 sst_unset_bits(FBIINIT1, VIDEO_RESET);
 sst_unset_bits(FBIINIT0, FBI_RESET | FIFO_RESET);
 sst_set_bits(FBIINIT2, EN_DRAM_REFRESH);

 pci_write_config_dword(sst_dev, PCI_INIT_ENABLE, PCI_EN_FIFO_WR);



 switch (info->var.bits_per_pixel) {
 case 16:
  lfbmode = LFB_565;
  break;
 default:
  return -EINVAL;
 }
 if (clipping) {
  sst_write(LFBMODE, lfbmode | EN_PXL_PIPELINE);
  f_ddprintk("setting clipping dimensions 0..%d, 0..%d\n",
              info->var.xres - 1, par->yDim - 1);

  sst_write(CLIP_LEFT_RIGHT, info->var.xres);
  sst_write(CLIP_LOWY_HIGHY, par->yDim);
  sst_set_bits(FBZMODE, EN_CLIPPING | EN_RGB_WRITE);
 } else {

  sst_write(LFBMODE, lfbmode);
 }
 return 0;
}
