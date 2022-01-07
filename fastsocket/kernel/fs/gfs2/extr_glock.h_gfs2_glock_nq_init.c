
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_holder {int dummy; } ;
struct gfs2_glock {int dummy; } ;


 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (struct gfs2_glock*,unsigned int,int,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;

__attribute__((used)) static inline int gfs2_glock_nq_init(struct gfs2_glock *gl,
         unsigned int state, int flags,
         struct gfs2_holder *gh)
{
 int error;

 gfs2_holder_init(gl, state, flags, gh);

 error = gfs2_glock_nq(gh);
 if (error)
  gfs2_holder_uninit(gh);

 return error;
}
