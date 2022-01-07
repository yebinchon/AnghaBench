
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int AutoloadFailFlag; int ** EfuseMap; } ;
struct net_device {int dummy; } ;


 size_t EFUSE_INIT_MAP ;
 size_t EFUSE_MODIFY_MAP ;
 int HWSET_MAX_SIZE_92S ;
 int efuse_ReadAllMap (struct net_device*,int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int,int) ;

extern void EFUSE_ShadowMapUpdate(struct net_device* dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (priv->AutoloadFailFlag == 1){
  memset(&(priv->EfuseMap[EFUSE_INIT_MAP][0]), 0xff, 128);
 }else{
  efuse_ReadAllMap(dev, &priv->EfuseMap[EFUSE_INIT_MAP][0]);
 }


 memcpy(&priv->EfuseMap[EFUSE_MODIFY_MAP][0],
  &priv->EfuseMap[EFUSE_INIT_MAP][0], HWSET_MAX_SIZE_92S);

}
