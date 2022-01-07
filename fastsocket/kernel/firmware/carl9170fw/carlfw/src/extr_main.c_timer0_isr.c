
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR9170_GPIO_REG_PORT_DATA ;
 int get (int ) ;
 int gpio_timer () ;
 int set (int ,int) ;
 int wlan_timer () ;

__attribute__((used)) static void timer0_isr(void)
{
 wlan_timer();
}
