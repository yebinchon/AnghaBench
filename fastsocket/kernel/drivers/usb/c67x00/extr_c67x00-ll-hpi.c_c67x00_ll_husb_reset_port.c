
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_sie {int sie_num; int dev; } ;


 int DONE_IRQ_EN ;
 int HOST_IRQ_EN_REG (int ) ;
 int HPI_IRQ_ROUTING_REG ;
 int PORT_CONNECT_CHANGE (int) ;
 int PORT_RES_EN (int) ;
 int SOFEOP_TO_CPU_EN (int ) ;
 int SOF_EOP_IRQ_EN ;
 int USB_CTL_REG (int ) ;
 int c67x00_ll_usb_clear_status (struct c67x00_sie*,int ) ;
 int hpi_set_bits (int ,int ,int) ;

void c67x00_ll_husb_reset_port(struct c67x00_sie *sie, int port)
{

 c67x00_ll_usb_clear_status(sie, PORT_CONNECT_CHANGE(port));


 hpi_set_bits(sie->dev, HPI_IRQ_ROUTING_REG,
       SOFEOP_TO_CPU_EN(sie->sie_num));
 hpi_set_bits(sie->dev, HOST_IRQ_EN_REG(sie->sie_num),
       SOF_EOP_IRQ_EN | DONE_IRQ_EN);


 hpi_set_bits(sie->dev, USB_CTL_REG(sie->sie_num), PORT_RES_EN(port));
}
