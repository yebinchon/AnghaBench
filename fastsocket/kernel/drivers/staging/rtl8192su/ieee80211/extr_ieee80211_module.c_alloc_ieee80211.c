
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned long data; int function; } ;
struct ieee80211_device {int open_wep; int host_encrypt; int host_decrypt; int ieee802_1x; int* last_rxseq_num; int* last_rxfrag_num; scalar_t__* last_packet_time; int * ibss_mac_hash; int * pHTInfo; scalar_t__ hwsec_active; scalar_t__ raw_tx; scalar_t__ privacy_invoked; scalar_t__ drop_unencrypted; scalar_t__ tkip_countermeasures; scalar_t__ wpa_enabled; scalar_t__ wpax_type_set; int atm_swbw; int atm_chnlop; int reorder_spinlock; int bw_spinlock; int wpax_suitlist_lock; int lock; TYPE_1__ crypt_deinit_timer; int crypt_deinit_list; int scan_age; int fts; struct net_device* dev; } ;
typedef int RT_HIGH_THROUGHPUT ;


 int DEFAULT_FTS ;
 int DEFAULT_MAX_SCAN_AGE ;
 int GFP_KERNEL ;
 int HTInitializeHTInfo (struct ieee80211_device*) ;
 int HTUpdateDefaultSetting (struct ieee80211_device*) ;
 int IEEE80211_DEBUG (int ,char*) ;
 int IEEE80211_DEBUG_INFO (char*) ;
 int IEEE80211_DL_ERR ;
 int IEEE80211_ERROR (char*,...) ;
 int IEEE_IBSS_MAC_HASH_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int TSInitialize (struct ieee80211_device*) ;
 struct net_device* alloc_etherdev (int) ;
 int atomic_set (int *,int ) ;
 int free_netdev (struct net_device*) ;
 int ieee80211_ccmp_null () ;
 int ieee80211_crypt_deinit_handler ;
 int ieee80211_networks_allocate (struct ieee80211_device*) ;
 int ieee80211_networks_initialize (struct ieee80211_device*) ;
 int ieee80211_softmac_init (struct ieee80211_device*) ;
 int ieee80211_tkip_null () ;
 int ieee80211_wep_null () ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ kzalloc (int,int ) ;
 int memset (struct ieee80211_device*,int ,int) ;
 struct ieee80211_device* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;

struct net_device *alloc_ieee80211(int sizeof_priv)
{
 struct ieee80211_device *ieee;
 struct net_device *dev;
 int i,err;

 IEEE80211_DEBUG_INFO("Initializing...\n");

 dev = alloc_etherdev(sizeof(struct ieee80211_device) + sizeof_priv);
 if (!dev) {
  IEEE80211_ERROR("Unable to network device.\n");
  goto failed;
 }

 ieee = netdev_priv(dev);
 memset(ieee, 0, sizeof(struct ieee80211_device)+sizeof_priv);
 ieee->dev = dev;

 err = ieee80211_networks_allocate(ieee);
 if (err) {
  IEEE80211_ERROR("Unable to allocate beacon storage: %d\n",
    err);
  goto failed;
 }
 ieee80211_networks_initialize(ieee);



 ieee->fts = DEFAULT_FTS;
 ieee->scan_age = DEFAULT_MAX_SCAN_AGE;
 ieee->open_wep = 1;


 ieee->host_encrypt = 1;
 ieee->host_decrypt = 1;
 ieee->ieee802_1x = 1;

 INIT_LIST_HEAD(&ieee->crypt_deinit_list);
 init_timer(&ieee->crypt_deinit_timer);
 ieee->crypt_deinit_timer.data = (unsigned long)ieee;
 ieee->crypt_deinit_timer.function = ieee80211_crypt_deinit_handler;

 spin_lock_init(&ieee->lock);
 spin_lock_init(&ieee->wpax_suitlist_lock);
 spin_lock_init(&ieee->bw_spinlock);
 spin_lock_init(&ieee->reorder_spinlock);

 atomic_set(&(ieee->atm_chnlop), 0);
 atomic_set(&(ieee->atm_swbw), 0);

 ieee->wpax_type_set = 0;
  ieee->wpa_enabled = 0;
  ieee->tkip_countermeasures = 0;
  ieee->drop_unencrypted = 0;
  ieee->privacy_invoked = 0;
  ieee->ieee802_1x = 1;
 ieee->raw_tx = 0;

 ieee->hwsec_active = 0;

 ieee80211_softmac_init(ieee);

 ieee->pHTInfo = (RT_HIGH_THROUGHPUT*)kzalloc(sizeof(RT_HIGH_THROUGHPUT), GFP_KERNEL);
 if (ieee->pHTInfo == ((void*)0))
 {
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc memory for HTInfo\n");
  return ((void*)0);
 }
 HTUpdateDefaultSetting(ieee);
 HTInitializeHTInfo(ieee);
 TSInitialize(ieee);

 for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
  INIT_LIST_HEAD(&ieee->ibss_mac_hash[i]);

 for (i = 0; i < 17; i++) {
   ieee->last_rxseq_num[i] = -1;
   ieee->last_rxfrag_num[i] = -1;
   ieee->last_packet_time[i] = 0;
 }


 ieee80211_tkip_null();
 ieee80211_wep_null();
 ieee80211_ccmp_null();

 return dev;

 failed:
 if (dev)
  free_netdev(dev);

 return ((void*)0);
}
