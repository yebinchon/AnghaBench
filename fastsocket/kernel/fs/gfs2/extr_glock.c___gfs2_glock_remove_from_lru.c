
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_flags; int gl_lru; } ;


 int GLF_LRU ;
 int atomic_dec (int *) ;
 int clear_bit (int ,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lru_count ;

__attribute__((used)) static void __gfs2_glock_remove_from_lru(struct gfs2_glock *gl)
{
 if (!list_empty(&gl->gl_lru)) {
  list_del_init(&gl->gl_lru);
  atomic_dec(&lru_count);
  clear_bit(GLF_LRU, &gl->gl_flags);
 }
}
