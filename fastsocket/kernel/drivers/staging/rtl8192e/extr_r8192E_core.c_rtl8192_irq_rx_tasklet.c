
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* ieee80211; } ;
struct TYPE_2__ {int dev; } ;


 int IMR_RDU ;
 int INTA_MASK ;
 int read_nic_dword (int ,int ) ;
 int rtl8192_rx (int ) ;
 int write_nic_dword (int ,int ,int) ;

void rtl8192_irq_rx_tasklet(struct r8192_priv *priv)
{
       rtl8192_rx(priv->ieee80211->dev);

       write_nic_dword(priv->ieee80211->dev, INTA_MASK,read_nic_dword(priv->ieee80211->dev, INTA_MASK) | IMR_RDU);
}
