
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_work; int gl_flags; } ;


 int GLF_FROZEN ;
 int GLF_REPLY_PENDING ;
 int gfs2_glock_put (struct gfs2_glock*) ;
 int glock_workqueue ;
 scalar_t__ queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void thaw_glock(struct gfs2_glock *gl)
{
 if (!test_and_clear_bit(GLF_FROZEN, &gl->gl_flags))
  goto out;
 set_bit(GLF_REPLY_PENDING, &gl->gl_flags);
 if (queue_delayed_work(glock_workqueue, &gl->gl_work, 0) == 0) {
 out:
  gfs2_glock_put(gl);
 }
}
