
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct cred {TYPE_1__* tgcred; int gid; int uid; } ;
struct TYPE_2__ {int lock; struct key* process_keyring; } ;


 int EEXIST ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_QUOTA_OVERRUN ;
 int PTR_ERR (struct key*) ;
 int key_put (struct key*) ;
 struct key* keyring_alloc (char*,int ,int ,struct cred*,int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int install_process_keyring_to_cred(struct cred *new)
{
 struct key *keyring;
 int ret;

 if (new->tgcred->process_keyring)
  return -EEXIST;

 keyring = keyring_alloc("_pid", new->uid, new->gid,
    new, KEY_ALLOC_QUOTA_OVERRUN, ((void*)0));
 if (IS_ERR(keyring))
  return PTR_ERR(keyring);

 spin_lock_irq(&new->tgcred->lock);
 if (!new->tgcred->process_keyring) {
  new->tgcred->process_keyring = keyring;
  keyring = ((void*)0);
  ret = 0;
 } else {
  ret = -EEXIST;
 }
 spin_unlock_irq(&new->tgcred->lock);
 key_put(keyring);
 return ret;
}
