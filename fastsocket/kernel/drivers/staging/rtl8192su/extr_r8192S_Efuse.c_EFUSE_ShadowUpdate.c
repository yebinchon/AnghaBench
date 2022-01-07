
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct r8192_priv {int** EfuseMap; } ;
struct net_device {int dummy; } ;


 int EFUSE_BIT (int) ;
 size_t EFUSE_INIT_MAP ;
 size_t EFUSE_MODIFY_MAP ;
 int EFUSE_ShadowMapUpdate (struct net_device*) ;
 int FALSE ;
 int TRUE ;
 int efuse_PgPacketWrite (struct net_device*,int,int,int*) ;
 int efuse_PowerSwitch (struct net_device*,int) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (int*,int*,int) ;

extern void
EFUSE_ShadowUpdate(struct net_device* dev)
{

 struct r8192_priv *priv = ieee80211_priv(dev);
 u16 i, offset, base = 0;
 u8 word_en = 0x0F;
 bool first_pg = 0;

 efuse_PowerSwitch(dev, TRUE);




 for (offset = 0; offset < 16; offset++)
 {

  word_en = 0x0F;
  base = offset * 8;





  for (i = 0; i < 8; i++)
  {
   if (offset == 0 && priv->EfuseMap[EFUSE_INIT_MAP][base+i] == 0xFF)
   {
    first_pg = TRUE;
   }



   if (first_pg == TRUE)
   {
    word_en &= ~(1<<(i/2));
    priv->EfuseMap[EFUSE_INIT_MAP][base+i] =
    priv->EfuseMap[EFUSE_MODIFY_MAP][base+i];
   }else
   {
   if ( priv->EfuseMap[EFUSE_INIT_MAP][base+i] !=
    priv->EfuseMap[EFUSE_MODIFY_MAP][base+i])
   {
    word_en &= ~(EFUSE_BIT(i/2));




    priv->EfuseMap[EFUSE_INIT_MAP][base+i] =
    priv->EfuseMap[EFUSE_MODIFY_MAP][base+i];
    }
   }
  }




  if (word_en != 0x0F)
  {
   u8 tmpdata[8];


   memcpy(tmpdata, &(priv->EfuseMap[EFUSE_MODIFY_MAP][base]), 8);

   efuse_PgPacketWrite(dev,(u8)offset,word_en,tmpdata);
  }

 }






 efuse_PowerSwitch(dev, FALSE);

 EFUSE_ShadowMapUpdate(dev);

}
