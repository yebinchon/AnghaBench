
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
GetDegradeTxRate(
        struct net_device *dev,
        u8 rate
        )
{
        struct r8180_priv *priv = ieee80211_priv(dev);
        u8 DownRate;


        switch(rate)
        {
        case 108:
                DownRate = 96;
                break;

        case 96:
                DownRate = 72;
                break;

        case 72:
                DownRate = 48;
                break;

        case 48:
                DownRate = 36;
                break;

        case 36:
                DownRate = 22;
                break;

        case 22:
                DownRate = 11;
                break;

        case 11:
                DownRate = 4;
                break;

        case 4:
                DownRate = 2;
                break;

        case 2:
                DownRate = 2;
                break;

        default:
                printk("GetDegradeTxRate(): Input Tx Rate(%d) is undefined!\n", rate);
                return rate;
        }

        if(IncludedInSupportedRates(priv, DownRate))
        {

                return DownRate;
        }
        else
        {

                return rate;
        }
        return rate;
}
