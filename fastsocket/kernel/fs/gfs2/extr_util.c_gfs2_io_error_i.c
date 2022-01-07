
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_fsname; } ;


 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,int ,int ,char const*,char*,unsigned int) ;

int gfs2_io_error_i(struct gfs2_sbd *sdp, const char *function, char *file,
      unsigned int line)
{
 int rv;
 rv = gfs2_lm_withdraw(sdp,
  "GFS2: fsid=%s: fatal: I/O error\n"
  "GFS2: fsid=%s:   function = %s, file = %s, line = %u\n",
  sdp->sd_fsname,
  sdp->sd_fsname, function, file, line);
 return rv;
}
