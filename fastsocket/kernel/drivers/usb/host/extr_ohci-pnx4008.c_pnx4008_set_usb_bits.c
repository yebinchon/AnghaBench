
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SE_USB_AHB_NEED_CLK_INT ;
 int SE_USB_I2C_INT ;
 int SE_USB_INT ;
 int SE_USB_NEED_CLK_INT ;
 int SE_USB_OTG_ATX_INT_N ;
 int SE_USB_OTG_TIMER_INT ;
 int start_int_ack (int ) ;
 int start_int_set_falling_edge (int ) ;
 int start_int_set_rising_edge (int ) ;
 int start_int_umask (int ) ;

__attribute__((used)) static void pnx4008_set_usb_bits(void)
{
 start_int_set_falling_edge(SE_USB_OTG_ATX_INT_N);
 start_int_ack(SE_USB_OTG_ATX_INT_N);
 start_int_umask(SE_USB_OTG_ATX_INT_N);

 start_int_set_rising_edge(SE_USB_OTG_TIMER_INT);
 start_int_ack(SE_USB_OTG_TIMER_INT);
 start_int_umask(SE_USB_OTG_TIMER_INT);

 start_int_set_rising_edge(SE_USB_I2C_INT);
 start_int_ack(SE_USB_I2C_INT);
 start_int_umask(SE_USB_I2C_INT);

 start_int_set_rising_edge(SE_USB_INT);
 start_int_ack(SE_USB_INT);
 start_int_umask(SE_USB_INT);

 start_int_set_rising_edge(SE_USB_NEED_CLK_INT);
 start_int_ack(SE_USB_NEED_CLK_INT);
 start_int_umask(SE_USB_NEED_CLK_INT);

 start_int_set_rising_edge(SE_USB_AHB_NEED_CLK_INT);
 start_int_ack(SE_USB_AHB_NEED_CLK_INT);
 start_int_umask(SE_USB_AHB_NEED_CLK_INT);
}
