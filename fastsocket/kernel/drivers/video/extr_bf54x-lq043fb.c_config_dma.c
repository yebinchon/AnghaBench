
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfin_bf54xfb_info {scalar_t__ fb_buffer; } ;


 int CH_EPPI0 ;
 int DATA_SIZE_32 ;
 int DIMENSION_2D ;
 int DIR_READ ;
 int DMA_BUS_SIZE ;
 int DMA_FLOW_AUTO ;
 int DMA_NOSYNC_KEEP_DMA_BUF ;
 int INTR_DISABLE ;
 int LCD_BPP ;
 int LCD_X_RES ;
 int LCD_Y_RES ;
 int set_bfin_dma_config (int ,int ,int ,int ,int ,int ) ;
 int set_dma_config (int ,int ) ;
 int set_dma_start_addr (int ,unsigned long) ;
 int set_dma_x_count (int ,int) ;
 int set_dma_x_modify (int ,int) ;
 int set_dma_y_count (int ,int ) ;
 int set_dma_y_modify (int ,int) ;

__attribute__((used)) static int config_dma(struct bfin_bf54xfb_info *fbi)
{

 set_dma_config(CH_EPPI0,
         set_bfin_dma_config(DIR_READ, DMA_FLOW_AUTO,
        INTR_DISABLE, DIMENSION_2D,
        DATA_SIZE_32,
        DMA_NOSYNC_KEEP_DMA_BUF));
 set_dma_x_count(CH_EPPI0, (LCD_X_RES * LCD_BPP) / DMA_BUS_SIZE);
 set_dma_x_modify(CH_EPPI0, DMA_BUS_SIZE / 8);
 set_dma_y_count(CH_EPPI0, LCD_Y_RES);
 set_dma_y_modify(CH_EPPI0, DMA_BUS_SIZE / 8);
 set_dma_start_addr(CH_EPPI0, (unsigned long)fbi->fb_buffer);

 return 0;
}
