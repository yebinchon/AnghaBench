
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int COMP_EPROM ;
 int RT_TRACE (int ,char*,int,int ) ;
 int eprom_read (struct net_device*,int) ;

void dump_eprom(struct net_device *dev)
{
 int i;
 for(i=0; i<63; i++)
  RT_TRACE(COMP_EPROM, "EEPROM addr %x : %x", i, eprom_read(dev,i));
}
