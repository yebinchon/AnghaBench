
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_fsname; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;


 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,int ,int ,unsigned long long,int ,char const*,char*,unsigned int) ;

int gfs2_io_error_bh_i(struct gfs2_sbd *sdp, struct buffer_head *bh,
         const char *function, char *file, unsigned int line)
{
 int rv;
 rv = gfs2_lm_withdraw(sdp,
  "GFS2: fsid=%s: fatal: I/O error\n"
  "GFS2: fsid=%s:   block = %llu\n"
  "GFS2: fsid=%s:   function = %s, file = %s, line = %u\n",
  sdp->sd_fsname,
  sdp->sd_fsname, (unsigned long long)bh->b_blocknr,
  sdp->sd_fsname, function, file, line);
 return rv;
}
