
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int const member_0; int version; int driver; } ;
typedef int info ;
typedef int ethcmd ;


 int DEVICE_NAME ;
 int DEVICE_VERSION ;
 int EFAULT ;
 int EOPNOTSUPP ;

 scalar_t__ copy_from_user (int*,void*,int) ;
 int copy_to_user (void*,struct ethtool_drvinfo*,int) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int ethtool_ioctl(struct net_device *dev, void *useraddr)
{
 u32 ethcmd;

 if (copy_from_user(&ethcmd, useraddr, sizeof(ethcmd)))
  return -EFAULT;

        switch (ethcmd) {
 case 128: {
  struct ethtool_drvinfo info = {128};
  strncpy(info.driver, DEVICE_NAME, sizeof(info.driver)-1);
  strncpy(info.version, DEVICE_VERSION, sizeof(info.version)-1);
  if (copy_to_user(useraddr, &info, sizeof(info)))
   return -EFAULT;
  return 0;
 }

        }

 return -EOPNOTSUPP;
}
