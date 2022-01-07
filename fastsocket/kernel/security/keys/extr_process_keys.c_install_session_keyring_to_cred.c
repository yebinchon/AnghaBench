
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int usage; } ;
struct cred {TYPE_1__* tgcred; int gid; int uid; } ;
struct TYPE_2__ {int lock; struct key* session_keyring; } ;


 scalar_t__ IS_ERR (struct key*) ;
 unsigned long KEY_ALLOC_IN_QUOTA ;
 unsigned long KEY_ALLOC_QUOTA_OVERRUN ;
 int PTR_ERR (struct key*) ;
 int atomic_inc (int *) ;
 int key_put (struct key*) ;
 struct key* keyring_alloc (char*,int ,int ,struct cred*,unsigned long,int *) ;
 int might_sleep () ;
 int rcu_assign_pointer (struct key*,struct key*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static int install_session_keyring_to_cred(struct cred *cred,
        struct key *keyring)
{
 unsigned long flags;
 struct key *old;

 might_sleep();


 if (!keyring) {
  flags = KEY_ALLOC_QUOTA_OVERRUN;
  if (cred->tgcred->session_keyring)
   flags = KEY_ALLOC_IN_QUOTA;

  keyring = keyring_alloc("_ses", cred->uid, cred->gid,
     cred, flags, ((void*)0));
  if (IS_ERR(keyring))
   return PTR_ERR(keyring);
 } else {
  atomic_inc(&keyring->usage);
 }


 spin_lock_irq(&cred->tgcred->lock);
 old = cred->tgcred->session_keyring;
 rcu_assign_pointer(cred->tgcred->session_keyring, keyring);
 spin_unlock_irq(&cred->tgcred->lock);



 if (old) {
  synchronize_rcu();
  key_put(old);
 }

 return 0;
}
