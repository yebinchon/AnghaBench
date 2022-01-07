
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int EPROM_DELAY ;
 int EPROM_R_SHIFT ;
 int read_nic_byte (struct net_device*,int ) ;
 int udelay (int ) ;

short eprom_r(struct net_device *dev)
{
 short bit;

 bit=(read_nic_byte(dev, EPROM_CMD) & (1<<EPROM_R_SHIFT) );
 udelay(EPROM_DELAY);

 if(bit) return 1;
 return 0;
}
