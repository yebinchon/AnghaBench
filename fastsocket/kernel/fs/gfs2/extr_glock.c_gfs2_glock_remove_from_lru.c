
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int dummy; } ;


 int __gfs2_glock_remove_from_lru (struct gfs2_glock*) ;
 int lru_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gfs2_glock_remove_from_lru(struct gfs2_glock *gl)
{
 spin_lock(&lru_lock);
 __gfs2_glock_remove_from_lru(gl);
 spin_unlock(&lru_lock);
}
