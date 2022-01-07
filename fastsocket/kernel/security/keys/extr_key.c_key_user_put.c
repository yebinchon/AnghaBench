
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_user {int user_ns; int node; int usage; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int key_user_lock ;
 int key_user_tree ;
 int kfree (struct key_user*) ;
 int put_user_ns (int ) ;
 int rb_erase (int *,int *) ;
 int spin_unlock (int *) ;

void key_user_put(struct key_user *user)
{
 if (atomic_dec_and_lock(&user->usage, &key_user_lock)) {
  rb_erase(&user->node, &key_user_tree);
  spin_unlock(&key_user_lock);
  put_user_ns(user->user_ns);

  kfree(user);
 }
}
