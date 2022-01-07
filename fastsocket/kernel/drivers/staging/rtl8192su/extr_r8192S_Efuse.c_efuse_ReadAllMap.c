
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int FALSE ;
 int ReadEFuse (struct net_device*,int ,int,int *) ;
 int TRUE ;
 int efuse_PowerSwitch (struct net_device*,int ) ;

__attribute__((used)) static void
efuse_ReadAllMap(struct net_device* dev, u8 *Efuse)
{
 efuse_PowerSwitch(dev, TRUE);
 ReadEFuse(dev, 0, 128, Efuse);
 efuse_PowerSwitch(dev, FALSE);
}
