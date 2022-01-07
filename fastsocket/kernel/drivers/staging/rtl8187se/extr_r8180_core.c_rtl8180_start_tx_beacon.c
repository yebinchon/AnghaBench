
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int AtimWnd ;
 int AtimWnd_AtimWnd ;
 int BintrItv ;
 int BintrItv_BintrItv ;
 int DMESG (char*) ;
 int EPROM_CMD_NORMAL ;
 int read_nic_word (struct net_device*,int ) ;
 int rtl8180_beacon_tx_enable (struct net_device*) ;
 int rtl8180_irq_disable (struct net_device*) ;
 int rtl8180_prepare_beacon (struct net_device*) ;
 int rtl8180_set_mode (struct net_device*,int ) ;
 int rtl8185b_irq_enable (struct net_device*) ;
 int write_nic_word (struct net_device*,int ,int) ;

void rtl8180_start_tx_beacon(struct net_device *dev)
{
 u16 word;

 DMESG("Enabling beacon TX");
 rtl8180_prepare_beacon(dev);
 rtl8180_irq_disable(dev);
 rtl8180_beacon_tx_enable(dev);

 word = read_nic_word(dev, AtimWnd) &~ AtimWnd_AtimWnd;
 write_nic_word(dev, AtimWnd,word);

 word = read_nic_word(dev, BintrItv);
 word &= ~BintrItv_BintrItv;
 word |= 1000;



 write_nic_word(dev, BintrItv, word);

 rtl8180_set_mode(dev, EPROM_CMD_NORMAL);

        rtl8185b_irq_enable(dev);
}
