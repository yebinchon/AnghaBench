
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8180_priv {int* key0; } ;
struct net_device {int dummy; } ;


 int DMESG (char*,int,int,int,int) ;
 scalar_t__ KEY0 ;
 int PGSELECT ;
 int PGSELECT_PG_SHIFT ;
 int SECURITY ;
 int SECURITY_ENCRYP_104 ;
 int SECURITY_ENCRYP_MASK ;
 int SECURITY_ENCRYP_SHIFT ;
 int SECURITY_WEP_RX_ENABLE_SHIFT ;
 int SECURITY_WEP_TX_ENABLE_SHIFT ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int read_nic_byte (struct net_device*,int ) ;
 int read_nic_dword (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,scalar_t__,int) ;

void rtl8180_set_hw_wep(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 u8 pgreg;
 u8 security;
 u32 key0_word4;

 pgreg=read_nic_byte(dev, PGSELECT);
 write_nic_byte(dev, PGSELECT, pgreg &~ (1<<PGSELECT_PG_SHIFT));

 key0_word4 = read_nic_dword(dev, KEY0+4+4+4);
 key0_word4 &= ~ 0xff;
 key0_word4 |= priv->key0[3]& 0xff;
 write_nic_dword(dev,KEY0,(priv->key0[0]));
 write_nic_dword(dev,KEY0+4,(priv->key0[1]));
 write_nic_dword(dev,KEY0+4+4,(priv->key0[2]));
 write_nic_dword(dev,KEY0+4+4+4,(key0_word4));

 security = read_nic_byte(dev,SECURITY);
 security |= (1<<SECURITY_WEP_TX_ENABLE_SHIFT);
 security |= (1<<SECURITY_WEP_RX_ENABLE_SHIFT);
 security &= ~ SECURITY_ENCRYP_MASK;
 security |= (SECURITY_ENCRYP_104<<SECURITY_ENCRYP_SHIFT);

 write_nic_byte(dev, SECURITY, security);

 DMESG("key %x %x %x %x",read_nic_dword(dev,KEY0+4+4+4),
       read_nic_dword(dev,KEY0+4+4),read_nic_dword(dev,KEY0+4),
       read_nic_dword(dev,KEY0));
}
