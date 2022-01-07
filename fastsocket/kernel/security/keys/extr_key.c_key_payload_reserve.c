
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int datalen; int quotalen; TYPE_1__* user; int flags; } ;
struct TYPE_2__ {scalar_t__ uid; int qnbytes; int lock; } ;


 int EDQUOT ;
 int KEY_FLAG_IN_QUOTA ;
 int key_check (struct key*) ;
 unsigned int key_quota_maxbytes ;
 unsigned int key_quota_root_maxbytes ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int key_payload_reserve(struct key *key, size_t datalen)
{
 int delta = (int)datalen - key->datalen;
 int ret = 0;

 key_check(key);


 if (delta != 0 && test_bit(KEY_FLAG_IN_QUOTA, &key->flags)) {
  unsigned maxbytes = (key->user->uid == 0) ?
   key_quota_root_maxbytes : key_quota_maxbytes;

  spin_lock(&key->user->lock);

  if (delta > 0 &&
      (key->user->qnbytes + delta >= maxbytes ||
       key->user->qnbytes + delta < key->user->qnbytes)) {
   ret = -EDQUOT;
  }
  else {
   key->user->qnbytes += delta;
   key->quotalen += delta;
  }
  spin_unlock(&key->user->lock);
 }


 if (ret == 0)
  key->datalen = datalen;

 return ret;
}
