
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct dcookie_struct {int dummy; } ;
struct TYPE_2__ {int d_flags; } ;


 int DCACHE_COOKIE ;
 int EINVAL ;
 int ENOMEM ;
 struct dcookie_struct* alloc_dcookie (struct path*) ;
 int dcookie_mutex ;
 unsigned long dcookie_value (struct dcookie_struct*) ;
 struct dcookie_struct* find_dcookie (unsigned long) ;
 int is_live () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int get_dcookie(struct path *path, unsigned long *cookie)
{
 int err = 0;
 struct dcookie_struct * dcs;

 mutex_lock(&dcookie_mutex);

 if (!is_live()) {
  err = -EINVAL;
  goto out;
 }

 if (path->dentry->d_flags & DCACHE_COOKIE) {
  dcs = find_dcookie((unsigned long)path->dentry);
 } else {
  dcs = alloc_dcookie(path);
  if (!dcs) {
   err = -ENOMEM;
   goto out;
  }
 }

 *cookie = dcookie_value(dcs);

out:
 mutex_unlock(&dcookie_mutex);
 return err;
}
