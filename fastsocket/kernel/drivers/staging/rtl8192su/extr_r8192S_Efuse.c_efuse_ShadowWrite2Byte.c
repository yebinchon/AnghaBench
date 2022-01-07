
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct r8192_priv {size_t** EfuseMap; } ;
struct net_device {int dummy; } ;


 size_t EFUSE_MODIFY_MAP ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void
efuse_ShadowWrite2Byte(struct net_device* dev, u16 Offset, u16 Value)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 priv->EfuseMap[EFUSE_MODIFY_MAP][Offset] = Value&0x00FF;
 priv->EfuseMap[EFUSE_MODIFY_MAP][Offset+1] = Value>>8;

}
