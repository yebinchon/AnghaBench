
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcookie_user {int next; } ;


 int GFP_KERNEL ;
 scalar_t__ dcookie_init () ;
 int dcookie_mutex ;
 int dcookie_users ;
 int is_live () ;
 int kfree (struct dcookie_user*) ;
 struct dcookie_user* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct dcookie_user * dcookie_register(void)
{
 struct dcookie_user * user;

 mutex_lock(&dcookie_mutex);

 user = kmalloc(sizeof(struct dcookie_user), GFP_KERNEL);
 if (!user)
  goto out;

 if (!is_live() && dcookie_init())
  goto out_free;

 list_add(&user->next, &dcookie_users);

out:
 mutex_unlock(&dcookie_mutex);
 return user;
out_free:
 kfree(user);
 user = ((void*)0);
 goto out;
}
