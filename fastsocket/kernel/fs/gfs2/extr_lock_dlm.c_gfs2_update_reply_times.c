
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_pcpu_lkstats {int * lkstats; } ;
struct TYPE_4__ {unsigned int ln_type; } ;
struct gfs2_glock {int gl_stats; TYPE_1__* gl_sbd; int gl_dstamp; int gl_flags; TYPE_2__ gl_name; } ;
typedef int s64 ;
struct TYPE_3__ {int sd_lkstats; } ;


 unsigned int GFS2_LKS_SRTT ;
 unsigned int GFS2_LKS_SRTTB ;
 int GLF_BLOCKING ;
 int gfs2_update_stats (int *,unsigned int,int ) ;
 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ test_bit (int ,int *) ;
 struct gfs2_pcpu_lkstats* this_cpu_ptr (int ) ;
 int trace_gfs2_glock_lock_time (struct gfs2_glock*,int ) ;

__attribute__((used)) static inline void gfs2_update_reply_times(struct gfs2_glock *gl)
{
 struct gfs2_pcpu_lkstats *lks;
 const unsigned gltype = gl->gl_name.ln_type;
 unsigned index = test_bit(GLF_BLOCKING, &gl->gl_flags) ?
    GFS2_LKS_SRTTB : GFS2_LKS_SRTT;
 s64 rtt;

 preempt_disable();
 rtt = ktime_to_ns(ktime_sub(ktime_get_real(), gl->gl_dstamp));
 lks = this_cpu_ptr(gl->gl_sbd->sd_lkstats);
 gfs2_update_stats(&gl->gl_stats, index, rtt);
 gfs2_update_stats(&lks->lkstats[gltype], index, rtt);
 preempt_enable();

 trace_gfs2_glock_lock_time(gl, rtt);
}
