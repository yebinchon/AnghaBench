
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {scalar_t__ gl_state; int gl_work; int gl_spin; } ;


 scalar_t__ LM_ST_UNLOCKED ;
 int * find_first_holder (struct gfs2_glock*) ;
 int gfs2_glock_put (struct gfs2_glock*) ;
 int gfs2_glock_remove_from_lru (struct gfs2_glock*) ;
 int glock_workqueue ;
 int handle_callback (struct gfs2_glock*,scalar_t__,int ,int) ;
 scalar_t__ queue_delayed_work (int ,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void clear_glock(struct gfs2_glock *gl)
{
 gfs2_glock_remove_from_lru(gl);

 spin_lock(&gl->gl_spin);
 if (find_first_holder(gl) == ((void*)0) && gl->gl_state != LM_ST_UNLOCKED)
  handle_callback(gl, LM_ST_UNLOCKED, 0, 0);
 spin_unlock(&gl->gl_spin);
 if (queue_delayed_work(glock_workqueue, &gl->gl_work, 0) == 0)
  gfs2_glock_put(gl);
}
