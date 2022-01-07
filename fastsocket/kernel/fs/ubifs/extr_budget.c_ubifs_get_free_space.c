
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int space_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 long long ubifs_get_free_space_nolock (struct ubifs_info*) ;

long long ubifs_get_free_space(struct ubifs_info *c)
{
 long long free;

 spin_lock(&c->space_lock);
 free = ubifs_get_free_space_nolock(c);
 spin_unlock(&c->space_lock);

 return free;
}
