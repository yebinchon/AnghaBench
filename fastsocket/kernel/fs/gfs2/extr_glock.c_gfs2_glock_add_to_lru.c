
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_flags; int gl_lru; } ;


 int GLF_LRU ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lru_count ;
 int lru_list ;
 int lru_lock ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gfs2_glock_add_to_lru(struct gfs2_glock *gl)
{
 spin_lock(&lru_lock);

 if (!list_empty(&gl->gl_lru))
  list_del_init(&gl->gl_lru);
 else
  atomic_inc(&lru_count);

 list_add_tail(&gl->gl_lru, &lru_list);
 set_bit(GLF_LRU, &gl->gl_flags);
 spin_unlock(&lru_lock);
}
