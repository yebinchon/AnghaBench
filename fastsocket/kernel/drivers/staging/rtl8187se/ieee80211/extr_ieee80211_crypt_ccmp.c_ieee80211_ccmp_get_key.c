
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_ccmp_data {int * tx_pn; int key; int key_set; } ;


 int CCMP_TK_LEN ;
 int memcpy (void*,int ,int) ;

__attribute__((used)) static int ieee80211_ccmp_get_key(void *key, int len, u8 *seq, void *priv)
{
 struct ieee80211_ccmp_data *data = priv;

 if (len < CCMP_TK_LEN)
  return -1;

 if (!data->key_set)
  return 0;
 memcpy(key, data->key, CCMP_TK_LEN);

 if (seq) {
  seq[0] = data->tx_pn[5];
  seq[1] = data->tx_pn[4];
  seq[2] = data->tx_pn[3];
  seq[3] = data->tx_pn[2];
  seq[4] = data->tx_pn[1];
  seq[5] = data->tx_pn[0];
 }

 return CCMP_TK_LEN;
}
