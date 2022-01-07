
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;



__attribute__((used)) static int cvm_oct_mdio_dummy_read(struct net_device *dev, int phy_id,
       int location)
{
 return 0xffff;
}
