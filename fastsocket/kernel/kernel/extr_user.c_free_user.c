
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int session_keyring; int uid_keyring; } ;


 int key_put (int ) ;
 int kmem_cache_free (int ,struct user_struct*) ;
 int sched_destroy_user (struct user_struct*) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uid_cachep ;
 int uid_hash_remove (struct user_struct*) ;
 int uidhash_lock ;

__attribute__((used)) static void free_user(struct user_struct *up, unsigned long flags)
{
 uid_hash_remove(up);
 spin_unlock_irqrestore(&uidhash_lock, flags);
 sched_destroy_user(up);
 key_put(up->uid_keyring);
 key_put(up->session_keyring);
 kmem_cache_free(uid_cachep, up);
}
