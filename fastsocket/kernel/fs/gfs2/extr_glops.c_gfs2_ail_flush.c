
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_log_descriptor {int dummy; } ;
struct gfs2_glock {int gl_ail_count; struct gfs2_sbd* gl_sbd; } ;


 int __gfs2_ail_flush (struct gfs2_glock*,int,unsigned int) ;
 unsigned int atomic_read (int *) ;
 int gfs2_log_flush (struct gfs2_sbd*,int *) ;
 int gfs2_trans_begin (struct gfs2_sbd*,int ,unsigned int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;

void gfs2_ail_flush(struct gfs2_glock *gl, bool fsync)
{
 struct gfs2_sbd *sdp = gl->gl_sbd;
 unsigned int revokes = atomic_read(&gl->gl_ail_count);
 unsigned int max_revokes = (sdp->sd_sb.sb_bsize - sizeof(struct gfs2_log_descriptor)) / sizeof(u64);
 int ret;

 if (!revokes)
  return;

 while (revokes > max_revokes)
  max_revokes += (sdp->sd_sb.sb_bsize - sizeof(struct gfs2_meta_header)) / sizeof(u64);

 ret = gfs2_trans_begin(sdp, 0, max_revokes);
 if (ret)
  return;
 __gfs2_ail_flush(gl, fsync, max_revokes);
 gfs2_trans_end(sdp);
 gfs2_log_flush(sdp, ((void*)0));
}
