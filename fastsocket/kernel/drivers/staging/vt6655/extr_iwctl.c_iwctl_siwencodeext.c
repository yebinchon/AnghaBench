
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wpa_alg ;
typedef int u8 ;
struct TYPE_7__ {int alg_name; int set_tx; int key_index; size_t key_len; size_t seq_len; int * seq; int * key; } ;
struct TYPE_8__ {TYPE_2__ wpa_key; } ;
struct viawget_wpa_param {TYPE_3__ u; int * addr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; } ;
struct TYPE_6__ {int * sa_data; } ;
struct iw_encode_ext {int alg; int ext_flags; size_t key_len; int * key; int * rx_seq; TYPE_1__ addr; } ;
struct TYPE_9__ {int bwextcount; int lock; int bWPASuppWextEnabled; } ;
typedef TYPE_4__* PSDevice ;


 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ GFP_KERNEL ;




 int IW_ENCODE_EXT_RX_SEQ_VALID ;
 int IW_ENCODE_EXT_SET_TX_KEY ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_SEQ_MAX_SIZE ;
 int PRINT_K (char*,...) ;
 int TRUE ;
 int WPA_ALG_CCMP ;
 int WPA_ALG_NONE ;
 int WPA_ALG_TKIP ;
 int WPA_ALG_WEP ;
 size_t ii ;
 int kfree (struct viawget_wpa_param*) ;
 int * kmalloc (int,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int netdev_priv (struct net_device*) ;
 int printk (char*,...) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wpa_set_keys (TYPE_4__*,struct viawget_wpa_param*,int ) ;

int iwctl_siwencodeext(struct net_device *dev,
             struct iw_request_info *info,
             struct iw_point *wrq,
             char *extra)
{
    PSDevice pDevice = (PSDevice)netdev_priv(dev);
 struct iw_encode_ext *ext = (struct iw_encode_ext*)extra;
    struct viawget_wpa_param *param=((void*)0);

    wpa_alg alg_name;
    u8 addr[6];
    int key_idx, set_tx=0;
    u8 seq[IW_ENCODE_SEQ_MAX_SIZE];
    u8 key[64];
    size_t seq_len=0,key_len=0;


    u8 *buf;
    size_t blen;
    u8 key_array[64];
    int ret=0;

PRINT_K("SIOCSIWENCODEEXT...... \n");

blen = sizeof(*param);
buf = kmalloc((int)blen, (int)GFP_KERNEL);
if (buf == ((void*)0))
    return -ENOMEM;
memset(buf, 0, blen);
param = (struct viawget_wpa_param *) buf;


switch (ext->alg) {
    case 130:
                  alg_name = WPA_ALG_NONE;
  break;
    case 128:
                  alg_name = WPA_ALG_WEP;
  break;
    case 129:
                  alg_name = WPA_ALG_TKIP;
  break;
    case 131:
                  alg_name = WPA_ALG_CCMP;
  break;
    default:
  PRINT_K("Unknown alg = %d\n",ext->alg);
  ret= -ENOMEM;
  goto error;
  }

 memcpy(addr, ext->addr.sa_data, ETH_ALEN);

  key_idx = (wrq->flags&IW_ENCODE_INDEX) - 1;

if(ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY)
   set_tx = 1;

 if(ext->ext_flags & IW_ENCODE_EXT_RX_SEQ_VALID) {
   seq_len=IW_ENCODE_SEQ_MAX_SIZE;
   memcpy(seq, ext->rx_seq, seq_len);
  }

if(ext->key_len) {
  key_len=ext->key_len;
  memcpy(key, &ext->key[0], key_len);
 }

memset(key_array, 0, 64);
if ( key_len > 0) {
     memcpy(key_array, key, key_len);
    if (key_len == 32) {

   memcpy(&key_array[16], &key[24], 8);
   memcpy(&key_array[24], &key[16], 8);
 }
 }


memcpy(param->addr, addr, ETH_ALEN);
param->u.wpa_key.alg_name = (int)alg_name;
param->u.wpa_key.set_tx = set_tx;
param->u.wpa_key.key_index = key_idx;
param->u.wpa_key.key_len = key_len;
param->u.wpa_key.key = (u8 *)key_array;
param->u.wpa_key.seq = (u8 *)seq;
param->u.wpa_key.seq_len = seq_len;
if(param->u.wpa_key.alg_name == WPA_ALG_NONE) {
   if(param->u.wpa_key.key_index ==0) {
     pDevice->bwextcount++;
    }
   if((pDevice->bwextcount == 1)&&(param->u.wpa_key.key_index ==1)) {
 pDevice->bwextcount++;
    }
   if((pDevice->bwextcount ==2)&&(param->u.wpa_key.key_index ==2)) {
 pDevice->bwextcount++;
 }
   if((pDevice->bwextcount ==3)&&(param->u.wpa_key.key_index ==3)) {
 pDevice->bwextcount++;
        }
   }
if( pDevice->bwextcount == 4) {
    printk("SIOCSIWENCODEEXT:Enable WPA WEXT SUPPORT!!!!!\n");
 pDevice->bwextcount=0;
   pDevice->bWPASuppWextEnabled = TRUE;
   }


  spin_lock_irq(&pDevice->lock);
 ret = wpa_set_keys(pDevice, param, TRUE);
  spin_unlock_irq(&pDevice->lock);

error:
kfree(param);
 return ret;
}
