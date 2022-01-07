
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int COMP_PHY ;
 int RT_TRACE (int ,char*) ;
 int printk (char*,...) ;
 int read_nic_byte (struct net_device*,int) ;

void rtl8192_dump_reg(struct net_device *dev)
{
 int i;
 int n;
 int max=0x1ff;

 RT_TRACE(COMP_PHY, "Dumping NIC register map");

 for(n=0;n<=max;)
 {
  printk( "\nD: %2x> ", n);
  for(i=0;i<16 && n<=max;i++,n++)
   printk("%2x ",read_nic_byte(dev,n));
 }
 printk("\n");
}
