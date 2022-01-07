
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int s_active; } ;


 int atomic_cmpxchg (int *,int,int) ;
 int atomic_read (int *) ;
 int cpu_relax () ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sysfs_dirent *sysfs_get_active(struct sysfs_dirent *sd)
{
 if (unlikely(!sd))
  return ((void*)0);

 while (1) {
  int v, t;

  v = atomic_read(&sd->s_active);
  if (unlikely(v < 0))
   return ((void*)0);

  t = atomic_cmpxchg(&sd->s_active, v, v + 1);
  if (likely(t == v))
   return sd;
  if (t < 0)
   return ((void*)0);

  cpu_relax();
 }
}
