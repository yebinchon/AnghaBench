
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lib80211_crypt_info {int crypt_quiesced; int lock; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void lib80211_crypt_quiescing(struct lib80211_crypt_info *info)
{
 unsigned long flags;

 spin_lock_irqsave(info->lock, flags);
 info->crypt_quiesced = 1;
 spin_unlock_irqrestore(info->lock, flags);
}
