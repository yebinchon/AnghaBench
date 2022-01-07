
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct r8192_priv {int** EfuseMap; } ;
struct net_device {int dummy; } ;


 size_t EFUSE_MODIFY_MAP ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void
efuse_ShadowRead4Byte(struct net_device* dev, u16 Offset, u32 *Value)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 *Value = priv->EfuseMap[EFUSE_MODIFY_MAP][Offset];
 *Value |= priv->EfuseMap[EFUSE_MODIFY_MAP][Offset+1]<<8;
 *Value |= priv->EfuseMap[EFUSE_MODIFY_MAP][Offset+2]<<16;
 *Value |= priv->EfuseMap[EFUSE_MODIFY_MAP][Offset+3]<<24;

}
