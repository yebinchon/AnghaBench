
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_pcpu_lkstats {int * lkstats; } ;
struct TYPE_4__ {unsigned int ln_type; } ;
struct gfs2_glock {int gl_stats; TYPE_1__* gl_sbd; int gl_dstamp; TYPE_2__ gl_name; } ;
typedef int s64 ;
typedef int ktime_t ;
struct TYPE_3__ {int sd_lkstats; } ;


 int GFS2_LKS_SIRT ;
 int gfs2_update_stats (int *,int ,int ) ;
 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct gfs2_pcpu_lkstats* this_cpu_ptr (int ) ;

__attribute__((used)) static inline void gfs2_update_request_times(struct gfs2_glock *gl)
{
 struct gfs2_pcpu_lkstats *lks;
 const unsigned gltype = gl->gl_name.ln_type;
 ktime_t dstamp;
 s64 irt;

 preempt_disable();
 dstamp = gl->gl_dstamp;
 gl->gl_dstamp = ktime_get_real();
 irt = ktime_to_ns(ktime_sub(gl->gl_dstamp, dstamp));
 lks = this_cpu_ptr(gl->gl_sbd->sd_lkstats);
 gfs2_update_stats(&gl->gl_stats, GFS2_LKS_SIRT, irt);
 gfs2_update_stats(&lks->lkstats[gltype], GFS2_LKS_SIRT, irt);
 preempt_enable();
}
