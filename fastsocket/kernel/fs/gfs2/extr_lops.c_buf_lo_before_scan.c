
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {scalar_t__ sd_replayed_blocks; scalar_t__ sd_found_blocks; } ;
struct gfs2_log_header_host {int dummy; } ;
struct gfs2_jdesc {int jd_inode; } ;


 struct gfs2_sbd* GFS2_SB (int ) ;

__attribute__((used)) static void buf_lo_before_scan(struct gfs2_jdesc *jd,
          struct gfs2_log_header_host *head, int pass)
{
 struct gfs2_sbd *sdp = GFS2_SB(jd->jd_inode);

 if (pass != 0)
  return;

 sdp->sd_found_blocks = 0;
 sdp->sd_replayed_blocks = 0;
}
