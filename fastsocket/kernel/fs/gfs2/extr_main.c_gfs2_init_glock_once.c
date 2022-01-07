
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_revokes; int gl_ail_count; int gl_ail_list; int gl_lru; int gl_holders; int gl_spin; int gl_list; } ;


 int INIT_HLIST_BL_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void gfs2_init_glock_once(void *foo)
{
 struct gfs2_glock *gl = foo;

 INIT_HLIST_BL_NODE(&gl->gl_list);
 spin_lock_init(&gl->gl_spin);
 INIT_LIST_HEAD(&gl->gl_holders);
 INIT_LIST_HEAD(&gl->gl_lru);
 INIT_LIST_HEAD(&gl->gl_ail_list);
 atomic_set(&gl->gl_ail_count, 0);
 atomic_set(&gl->gl_revokes, 0);
}
