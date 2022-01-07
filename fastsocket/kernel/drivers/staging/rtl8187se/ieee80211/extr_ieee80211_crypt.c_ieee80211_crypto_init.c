
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int algs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* hcrypt ;
 int ieee80211_crypt_null ;
 int ieee80211_register_crypto_ops (int *) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int spin_lock_init (int *) ;

int ieee80211_crypto_init(void)
{
 int ret = -ENOMEM;

 hcrypt = kmalloc(sizeof(*hcrypt), GFP_KERNEL);
 if (!hcrypt)
  goto out;

 memset(hcrypt, 0, sizeof(*hcrypt));
 INIT_LIST_HEAD(&hcrypt->algs);
 spin_lock_init(&hcrypt->lock);

 ret = ieee80211_register_crypto_ops(&ieee80211_crypt_null);
 if (ret < 0) {
  kfree(hcrypt);
  hcrypt = ((void*)0);
 }
out:
 return ret;
}
