
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct user_struct {int user_ns; int session_keyring; int uid_keyring; int __count; int uid; } ;
struct user_namespace {int dummy; } ;
struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int get_user_ns (struct user_namespace*) ;
 int key_put (int ) ;
 int kmem_cache_free (int ,struct user_struct*) ;
 struct user_struct* kmem_cache_zalloc (int ,int ) ;
 int put_user_ns (int ) ;
 scalar_t__ sched_create_user (struct user_struct*) ;
 int sched_destroy_user (struct user_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int uid_cachep ;
 struct user_struct* uid_hash_find (int ,struct hlist_head*) ;
 int uid_hash_insert (struct user_struct*,struct hlist_head*) ;
 int uidhash_lock ;
 struct hlist_head* uidhashentry (struct user_namespace*,int ) ;
 int uids_mutex_lock () ;
 int uids_mutex_unlock () ;
 scalar_t__ uids_user_create (struct user_struct*) ;

struct user_struct *alloc_uid(struct user_namespace *ns, uid_t uid)
{
 struct hlist_head *hashent = uidhashentry(ns, uid);
 struct user_struct *up, *new;




 uids_mutex_lock();

 spin_lock_irq(&uidhash_lock);
 up = uid_hash_find(uid, hashent);
 spin_unlock_irq(&uidhash_lock);

 if (!up) {
  new = kmem_cache_zalloc(uid_cachep, GFP_KERNEL);
  if (!new)
   goto out_unlock;

  new->uid = uid;
  atomic_set(&new->__count, 1);

  if (sched_create_user(new) < 0)
   goto out_free_user;

  new->user_ns = get_user_ns(ns);

  if (uids_user_create(new))
   goto out_destoy_sched;





  spin_lock_irq(&uidhash_lock);
  up = uid_hash_find(uid, hashent);
  if (up) {





   key_put(new->uid_keyring);
   key_put(new->session_keyring);
   kmem_cache_free(uid_cachep, new);
  } else {
   uid_hash_insert(new, hashent);
   up = new;
  }
  spin_unlock_irq(&uidhash_lock);
 }

 uids_mutex_unlock();

 return up;

out_destoy_sched:
 sched_destroy_user(new);
 put_user_ns(new->user_ns);
out_free_user:
 kmem_cache_free(uid_cachep, new);
out_unlock:
 uids_mutex_unlock();
 return ((void*)0);
}
