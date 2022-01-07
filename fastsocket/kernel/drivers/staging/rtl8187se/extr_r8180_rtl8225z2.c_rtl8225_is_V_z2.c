
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int read_rtl8225 (struct net_device*,int) ;
 int write_rtl8225 (struct net_device*,int ,int) ;

short rtl8225_is_V_z2(struct net_device *dev)
{
 short vz2 = 1;

 if (read_rtl8225(dev, 8) != 0x588)
  vz2 = 0;
 else
  if (read_rtl8225(dev, 9) != 0x700)
   vz2 = 0;


 write_rtl8225(dev, 0, 0xb7);

 return vz2;
}
