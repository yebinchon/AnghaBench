
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tkip_data {scalar_t__ rx_tfm_arc4; scalar_t__ rx_tfm_michael; scalar_t__ tx_tfm_arc4; scalar_t__ tx_tfm_michael; } ;


 int crypto_free_blkcipher (scalar_t__) ;
 int crypto_free_hash (scalar_t__) ;
 int kfree (void*) ;

__attribute__((used)) static void ieee80211_tkip_deinit(void *priv)
{
 struct ieee80211_tkip_data *_priv = priv;

 if (_priv) {
  if (_priv->tx_tfm_michael)
   crypto_free_hash(_priv->tx_tfm_michael);
  if (_priv->tx_tfm_arc4)
   crypto_free_blkcipher(_priv->tx_tfm_arc4);
  if (_priv->rx_tfm_michael)
   crypto_free_hash(_priv->rx_tfm_michael);
  if (_priv->rx_tfm_arc4)
   crypto_free_blkcipher(_priv->rx_tfm_arc4);
 }
 kfree(priv);
}
