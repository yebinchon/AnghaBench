
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int ** dm_shadow ;
 int read_nic_byte (struct net_device*,int) ;

extern void dm_shadow_init(struct net_device *dev)
{
 u8 page;
 u16 offset;

 for (page = 0; page < 5; page++)
  for (offset = 0; offset < 256; offset++)
  {
   dm_shadow[page][offset] = read_nic_byte(dev, offset+page*256);

  }

 for (page = 8; page < 11; page++)
  for (offset = 0; offset < 256; offset++)
   dm_shadow[page][offset] = read_nic_byte(dev, offset+page*256);

 for (page = 12; page < 15; page++)
  for (offset = 0; offset < 256; offset++)
   dm_shadow[page][offset] = read_nic_byte(dev, offset+page*256);

}
