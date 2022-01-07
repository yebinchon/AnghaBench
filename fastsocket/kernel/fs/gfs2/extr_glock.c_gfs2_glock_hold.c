
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int gl_ref; } ;


 int GLOCK_BUG_ON (struct gfs2_glock*,int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;

void gfs2_glock_hold(struct gfs2_glock *gl)
{
 GLOCK_BUG_ON(gl, atomic_read(&gl->gl_ref) == 0);
 atomic_inc(&gl->gl_ref);
}
