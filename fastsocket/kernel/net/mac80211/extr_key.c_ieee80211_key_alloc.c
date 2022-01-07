
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_mmie {int dummy; } ;
struct TYPE_12__ {int cipher; int keyidx; size_t keylen; int icv_len; int key; int iv_len; scalar_t__ flags; } ;
struct TYPE_10__ {int tfm; int * rx_pn; } ;
struct TYPE_9__ {int tfm; int ** rx_pn; } ;
struct TYPE_8__ {int txlock; TYPE_1__* rx; } ;
struct TYPE_11__ {TYPE_4__ aes_cmac; TYPE_3__ ccmp; TYPE_2__ tkip; } ;
struct ieee80211_key {int list; TYPE_6__ conf; TYPE_5__ u; scalar_t__ flags; } ;
struct TYPE_7__ {int iv16; int iv32; } ;


 int BUG_ON (int) ;
 int CCMP_HDR_LEN ;
 int CCMP_MIC_LEN ;
 int CCMP_PN_LEN ;
 int CMAC_PN_LEN ;
 int ENOMEM ;
 struct ieee80211_key* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IEEE80211_NUM_TIDS ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ERR (int ) ;
 int NUM_DEFAULT_KEYS ;
 int NUM_DEFAULT_MGMT_KEYS ;
 int PTR_ERR (int ) ;
 int TKIP_ICV_LEN ;
 int TKIP_IV_LEN ;
 int WEP_ICV_LEN ;
 int WEP_IV_LEN ;





 int get_unaligned_le16 (int const*) ;
 int get_unaligned_le32 (int const*) ;
 int ieee80211_aes_cmac_key_setup (int const*) ;
 int ieee80211_aes_key_setup_encrypt (int const*) ;
 int kfree (struct ieee80211_key*) ;
 struct ieee80211_key* kzalloc (int,int ) ;
 int memcpy (int ,int const*,size_t) ;
 int spin_lock_init (int *) ;

struct ieee80211_key *ieee80211_key_alloc(u32 cipher, int idx, size_t key_len,
       const u8 *key_data,
       size_t seq_len, const u8 *seq)
{
 struct ieee80211_key *key;
 int i, j, err;

 BUG_ON(idx < 0 || idx >= NUM_DEFAULT_KEYS + NUM_DEFAULT_MGMT_KEYS);

 key = kzalloc(sizeof(struct ieee80211_key) + key_len, GFP_KERNEL);
 if (!key)
  return ERR_PTR(-ENOMEM);





 key->conf.flags = 0;
 key->flags = 0;

 key->conf.cipher = cipher;
 key->conf.keyidx = idx;
 key->conf.keylen = key_len;
 switch (cipher) {
 case 128:
 case 129:
  key->conf.iv_len = WEP_IV_LEN;
  key->conf.icv_len = WEP_ICV_LEN;
  break;
 case 130:
  key->conf.iv_len = TKIP_IV_LEN;
  key->conf.icv_len = TKIP_ICV_LEN;
  if (seq) {
   for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
    key->u.tkip.rx[i].iv32 =
     get_unaligned_le32(&seq[2]);
    key->u.tkip.rx[i].iv16 =
     get_unaligned_le16(seq);
   }
  }
  spin_lock_init(&key->u.tkip.txlock);
  break;
 case 131:
  key->conf.iv_len = CCMP_HDR_LEN;
  key->conf.icv_len = CCMP_MIC_LEN;
  if (seq) {
   for (i = 0; i < IEEE80211_NUM_TIDS + 1; i++)
    for (j = 0; j < CCMP_PN_LEN; j++)
     key->u.ccmp.rx_pn[i][j] =
      seq[CCMP_PN_LEN - j - 1];
  }




  key->u.ccmp.tfm = ieee80211_aes_key_setup_encrypt(key_data);
  if (IS_ERR(key->u.ccmp.tfm)) {
   err = PTR_ERR(key->u.ccmp.tfm);
   kfree(key);
   return ERR_PTR(err);
  }
  break;
 case 132:
  key->conf.iv_len = 0;
  key->conf.icv_len = sizeof(struct ieee80211_mmie);
  if (seq)
   for (j = 0; j < CMAC_PN_LEN; j++)
    key->u.aes_cmac.rx_pn[j] =
     seq[CMAC_PN_LEN - j - 1];




  key->u.aes_cmac.tfm =
   ieee80211_aes_cmac_key_setup(key_data);
  if (IS_ERR(key->u.aes_cmac.tfm)) {
   err = PTR_ERR(key->u.aes_cmac.tfm);
   kfree(key);
   return ERR_PTR(err);
  }
  break;
 }
 memcpy(key->conf.key, key_data, key_len);
 INIT_LIST_HEAD(&key->list);

 return key;
}
