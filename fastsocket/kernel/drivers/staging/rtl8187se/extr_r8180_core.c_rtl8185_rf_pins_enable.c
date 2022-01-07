
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int RFPinsEnable ;
 int write_nic_word (struct net_device*,int ,int) ;

void rtl8185_rf_pins_enable(struct net_device *dev)
{


 write_nic_word(dev, RFPinsEnable, 0x1fff);
}
