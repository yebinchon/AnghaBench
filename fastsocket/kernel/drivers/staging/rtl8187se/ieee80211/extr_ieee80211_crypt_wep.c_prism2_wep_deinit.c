
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prism2_wep_data {scalar_t__ rx_tfm; scalar_t__ tx_tfm; } ;


 int crypto_free_blkcipher (scalar_t__) ;
 int kfree (void*) ;

__attribute__((used)) static void prism2_wep_deinit(void *priv)
{
 struct prism2_wep_data *_priv = priv;

 if (_priv) {
  if (_priv->tx_tfm)
   crypto_free_blkcipher(_priv->tx_tfm);
  if (_priv->rx_tfm)
   crypto_free_blkcipher(_priv->rx_tfm);
 }

 kfree(priv);
}
