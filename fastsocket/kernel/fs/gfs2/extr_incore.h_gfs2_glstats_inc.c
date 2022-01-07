
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stats; } ;
struct gfs2_glock {TYPE_1__ gl_stats; } ;



__attribute__((used)) static inline void gfs2_glstats_inc(struct gfs2_glock *gl, int which)
{
 gl->gl_stats.stats[which]++;
}
