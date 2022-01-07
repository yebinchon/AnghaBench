
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_ref; } ;


 int GLOCK_BUG_ON (struct gfs2_glock*,int) ;
 scalar_t__ atomic_dec_and_test (int *) ;

void gfs2_glock_put_nolock(struct gfs2_glock *gl)
{
 if (atomic_dec_and_test(&gl->gl_ref))
  GLOCK_BUG_ON(gl, 1);
}
