
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ IncludedInSupportedRates (struct r8180_priv*,int) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*,int) ;

u8
GetUpgradeTxRate(
        struct net_device *dev,
        u8 rate
        )
{
        struct r8180_priv *priv = ieee80211_priv(dev);
        u8 UpRate;


        switch(rate)
        {
        case 108:
                UpRate = 108;
                break;

        case 96:
                UpRate = 108;
                break;

        case 72:
                UpRate = 96;
                break;

        case 48:
                UpRate = 72;
                break;

        case 36:
                UpRate = 48;
                break;

        case 22:
                UpRate = 36;
                break;

        case 11:
                UpRate = 22;
                break;

        case 4:
                UpRate = 11;
                break;

        case 2:
                UpRate = 4;
                break;

        default:
                printk("GetUpgradeTxRate(): Input Tx Rate(%d) is undefined!\n", rate);
                return rate;
        }

        if(IncludedInSupportedRates(priv, UpRate))
        {

                return UpRate;
        }
        else
        {

                return rate;
        }
        return rate;
}
