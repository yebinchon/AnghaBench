
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_chan {int sglist; int lcdc; } ;
struct list_head {int dummy; } ;
struct fb_info {int dev; struct sh_mobile_lcdc_chan* par; } ;


 int DMA_TO_DEVICE ;
 int LDSM2R ;
 int dma_map_sg (int ,int ,unsigned int,int ) ;
 int dma_unmap_sg (int ,int ,unsigned int,int ) ;
 int lcdc_write_chan (struct sh_mobile_lcdc_chan*,int ,int) ;
 int sh_mobile_lcdc_clk_on (int ) ;
 unsigned int sh_mobile_lcdc_sginit (struct fb_info*,struct list_head*) ;

__attribute__((used)) static void sh_mobile_lcdc_deferred_io(struct fb_info *info,
           struct list_head *pagelist)
{
 struct sh_mobile_lcdc_chan *ch = info->par;
 unsigned int nr_pages;


 sh_mobile_lcdc_clk_on(ch->lcdc);

 nr_pages = sh_mobile_lcdc_sginit(info, pagelist);
 dma_map_sg(info->dev, ch->sglist, nr_pages, DMA_TO_DEVICE);


 lcdc_write_chan(ch, LDSM2R, 1);

 dma_unmap_sg(info->dev, ch->sglist, nr_pages, DMA_TO_DEVICE);
}
