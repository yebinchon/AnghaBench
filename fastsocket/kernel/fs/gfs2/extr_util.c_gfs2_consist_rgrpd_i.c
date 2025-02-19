
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_fsname; } ;
struct gfs2_rgrpd {scalar_t__ rd_addr; struct gfs2_sbd* rd_sbd; } ;


 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,int ,int ,unsigned long long,int ,char const*,char*,unsigned int) ;

int gfs2_consist_rgrpd_i(struct gfs2_rgrpd *rgd, int cluster_wide,
    const char *function, char *file, unsigned int line)
{
 struct gfs2_sbd *sdp = rgd->rd_sbd;
 int rv;
 rv = gfs2_lm_withdraw(sdp,
  "GFS2: fsid=%s: fatal: filesystem consistency error\n"
  "GFS2: fsid=%s:   RG = %llu\n"
  "GFS2: fsid=%s:   function = %s, file = %s, line = %u\n",
  sdp->sd_fsname,
  sdp->sd_fsname, (unsigned long long)rgd->rd_addr,
  sdp->sd_fsname, function, file, line);
 return rv;
}
