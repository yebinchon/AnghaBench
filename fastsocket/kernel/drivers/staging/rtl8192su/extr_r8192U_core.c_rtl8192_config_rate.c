
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {size_t rates_len; int* rates; size_t rates_ex_len; int* rates_ex; } ;
struct TYPE_2__ {struct ieee80211_network current_network; } ;
 int RRSR_11M ;
 int RRSR_12M ;
 int RRSR_18M ;
 int RRSR_1M ;
 int RRSR_24M ;
 int RRSR_2M ;
 int RRSR_36M ;
 int RRSR_48M ;
 int RRSR_54M ;
 int RRSR_5_5M ;
 int RRSR_6M ;
 int RRSR_9M ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

void rtl8192_config_rate(struct net_device* dev, u16* rate_config)
{
  struct r8192_priv *priv = ieee80211_priv(dev);
  struct ieee80211_network *net;
  u8 i=0, basic_rate = 0;
  net = & priv->ieee80211->current_network;

  for (i=0; i<net->rates_len; i++)
  {
   basic_rate = net->rates[i]&0x7f;
   switch(basic_rate)
   {
    case 136: *rate_config |= RRSR_1M; break;
    case 134: *rate_config |= RRSR_2M; break;
    case 130: *rate_config |= RRSR_5_5M; break;
    case 139: *rate_config |= RRSR_11M; break;
    case 129: *rate_config |= RRSR_6M; break;
    case 128: *rate_config |= RRSR_9M; break;
    case 138: *rate_config |= RRSR_12M; break;
    case 137: *rate_config |= RRSR_18M; break;
    case 135: *rate_config |= RRSR_24M; break;
    case 133: *rate_config |= RRSR_36M; break;
    case 132: *rate_config |= RRSR_48M; break;
    case 131: *rate_config |= RRSR_54M; break;
   }
  }
  for (i=0; i<net->rates_ex_len; i++)
  {
   basic_rate = net->rates_ex[i]&0x7f;
   switch(basic_rate)
   {
    case 136: *rate_config |= RRSR_1M; break;
    case 134: *rate_config |= RRSR_2M; break;
    case 130: *rate_config |= RRSR_5_5M; break;
    case 139: *rate_config |= RRSR_11M; break;
    case 129: *rate_config |= RRSR_6M; break;
    case 128: *rate_config |= RRSR_9M; break;
    case 138: *rate_config |= RRSR_12M; break;
    case 137: *rate_config |= RRSR_18M; break;
    case 135: *rate_config |= RRSR_24M; break;
    case 133: *rate_config |= RRSR_36M; break;
    case 132: *rate_config |= RRSR_48M; break;
    case 131: *rate_config |= RRSR_54M; break;
   }
  }
}
