
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsoft_priv {int dummy; } ;
struct sk_buff {int len; int data; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;


 int FRAME_TYPE_802_11_MANAGEMENT ;
 int MLMESendFrame (struct wbsoft_priv*,int ,int ,int ) ;
 int NETDEV_TX_OK ;

__attribute__((used)) static int wbsoft_tx(struct ieee80211_hw *dev, struct sk_buff *skb)
{
 struct wbsoft_priv *priv = dev->priv;

 MLMESendFrame(priv, skb->data, skb->len, FRAME_TYPE_802_11_MANAGEMENT);

 return NETDEV_TX_OK;
}
