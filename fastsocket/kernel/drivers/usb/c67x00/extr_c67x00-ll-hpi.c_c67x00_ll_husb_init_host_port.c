
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_sie {int sie_num; int dev; } ;


 int HOST_MODE ;
 int HOST_STAT_MASK ;
 int USB_CTL_REG (int ) ;
 int c67x00_ll_husb_sie_init (struct c67x00_sie*) ;
 int c67x00_ll_usb_clear_status (struct c67x00_sie*,int ) ;
 int dev_warn (int ,char*,int ) ;
 int hpi_read_word (int ,int ) ;
 int hpi_set_bits (int ,int ,int) ;
 int sie_dev (struct c67x00_sie*) ;

void c67x00_ll_husb_init_host_port(struct c67x00_sie *sie)
{

 hpi_set_bits(sie->dev, USB_CTL_REG(sie->sie_num), HOST_MODE);
 c67x00_ll_husb_sie_init(sie);

 c67x00_ll_usb_clear_status(sie, HOST_STAT_MASK);

 if (!(hpi_read_word(sie->dev, USB_CTL_REG(sie->sie_num)) & HOST_MODE))
  dev_warn(sie_dev(sie),
    "SIE %d not set to host mode\n", sie->sie_num);
}
