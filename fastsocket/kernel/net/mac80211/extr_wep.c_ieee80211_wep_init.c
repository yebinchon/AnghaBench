
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {void* wep_rx_tfm; void* wep_tx_tfm; int wep_iv; } ;


 int CRYPTO_ALG_ASYNC ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int WEP_IV_LEN ;
 void* crypto_alloc_cipher (char*,int ,int ) ;
 int crypto_free_cipher (void*) ;
 int get_random_bytes (int *,int ) ;

int ieee80211_wep_init(struct ieee80211_local *local)
{

 get_random_bytes(&local->wep_iv, WEP_IV_LEN);

 local->wep_tx_tfm = crypto_alloc_cipher("arc4", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(local->wep_tx_tfm)) {
  local->wep_rx_tfm = ERR_PTR(-EINVAL);
  return PTR_ERR(local->wep_tx_tfm);
 }

 local->wep_rx_tfm = crypto_alloc_cipher("arc4", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(local->wep_rx_tfm)) {
  crypto_free_cipher(local->wep_tx_tfm);
  local->wep_tx_tfm = ERR_PTR(-EINVAL);
  return PTR_ERR(local->wep_rx_tfm);
 }

 return 0;
}
