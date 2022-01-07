
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int IEEE80211_MAX_DATA_LEN ;

__attribute__((used)) static int ieee80211_change_mtu(struct net_device *dev, int new_mtu)
{
 if (new_mtu < 256 || new_mtu > IEEE80211_MAX_DATA_LEN)
  return -EINVAL;

 dev->mtu = new_mtu;
 return 0;
}
