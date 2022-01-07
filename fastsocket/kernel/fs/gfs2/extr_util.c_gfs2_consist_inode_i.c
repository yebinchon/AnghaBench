
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_fsname; } ;
struct gfs2_inode {scalar_t__ i_no_addr; scalar_t__ i_no_formal_ino; int i_inode; } ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,int ,int ,unsigned long long,unsigned long long,int ,char const*,char*,unsigned int) ;

int gfs2_consist_inode_i(struct gfs2_inode *ip, int cluster_wide,
    const char *function, char *file, unsigned int line)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 int rv;
 rv = gfs2_lm_withdraw(sdp,
  "GFS2: fsid=%s: fatal: filesystem consistency error\n"
  "GFS2: fsid=%s:   inode = %llu %llu\n"
  "GFS2: fsid=%s:   function = %s, file = %s, line = %u\n",
  sdp->sd_fsname,
  sdp->sd_fsname, (unsigned long long)ip->i_no_formal_ino,
  (unsigned long long)ip->i_no_addr,
  sdp->sd_fsname, function, file, line);
 return rv;
}
