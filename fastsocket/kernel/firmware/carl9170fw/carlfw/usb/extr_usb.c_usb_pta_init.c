
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * os_cfg_desc; int * cfg_desc; } ;
struct TYPE_4__ {TYPE_1__ usb; } ;


 int AR9170_PTA_DMA_MODE_CTRL_DISABLE_USB ;
 int AR9170_PTA_DMA_MODE_CTRL_RESET ;
 int AR9170_PTA_REG_DMA_MODE_CTRL ;
 unsigned int AR9170_USB_DMA_CTL_DOWN_STREAM ;
 unsigned int AR9170_USB_DMA_CTL_ENABLE_FROM_DEVICE ;
 unsigned int AR9170_USB_DMA_CTL_ENABLE_TO_DEVICE ;
 unsigned int AR9170_USB_DMA_CTL_HIGH_SPEED ;
 unsigned int AR9170_USB_DMA_CTL_UP_PACKET_MODE ;
 unsigned int AR9170_USB_DMA_CTL_UP_STREAM_16K ;
 unsigned int AR9170_USB_DMA_CTL_UP_STREAM_32K ;
 unsigned int AR9170_USB_DMA_CTL_UP_STREAM_4K ;
 unsigned int AR9170_USB_DMA_CTL_UP_STREAM_8K ;
 int AR9170_USB_REG_DMA_CTL ;
 int AR9170_USB_REG_MAX_AGG_UPLOAD ;
 int AR9170_USB_REG_UPLOAD_TIME_CTL ;
 int andl (int ,int ) ;
 TYPE_2__ fw ;
 int orl (int ,int ) ;
 int set (int ,unsigned int) ;
 int usb_config_fullspeed ;
 int usb_config_highspeed ;
 scalar_t__ usb_detect_highspeed () ;

__attribute__((used)) static void usb_pta_init(void)
{
 unsigned int usb_dma_ctrl = 0;

 andl(AR9170_PTA_REG_DMA_MODE_CTRL,
  ~AR9170_PTA_DMA_MODE_CTRL_DISABLE_USB);


 orl(AR9170_PTA_REG_DMA_MODE_CTRL, AR9170_PTA_DMA_MODE_CTRL_RESET);
 andl(AR9170_PTA_REG_DMA_MODE_CTRL, ~AR9170_PTA_DMA_MODE_CTRL_RESET);

 if (usb_detect_highspeed()) {
  fw.usb.os_cfg_desc = &usb_config_fullspeed;
  fw.usb.cfg_desc = &usb_config_highspeed;


  usb_dma_ctrl |= AR9170_USB_DMA_CTL_HIGH_SPEED;
 } else {
  fw.usb.cfg_desc = &usb_config_fullspeed;
  fw.usb.os_cfg_desc = &usb_config_highspeed;
 }
 usb_dma_ctrl |= AR9170_USB_DMA_CTL_UP_PACKET_MODE;
 usb_dma_ctrl |= AR9170_USB_DMA_CTL_ENABLE_TO_DEVICE |
     AR9170_USB_DMA_CTL_ENABLE_FROM_DEVICE;

 set(AR9170_USB_REG_DMA_CTL, usb_dma_ctrl);
}
