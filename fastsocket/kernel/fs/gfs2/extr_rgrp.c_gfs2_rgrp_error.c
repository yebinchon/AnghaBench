
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int rd_flags; int rd_gl; scalar_t__ rd_addr; struct gfs2_sbd* rd_sbd; } ;


 int GFS2_RDF_ERROR ;
 int fs_warn (struct gfs2_sbd*,char*,...) ;
 int gfs2_rgrp_dump (int *,int ) ;

__attribute__((used)) static void gfs2_rgrp_error(struct gfs2_rgrpd *rgd)
{
 struct gfs2_sbd *sdp = rgd->rd_sbd;
 fs_warn(sdp, "rgrp %llu has an error, marking it readonly until umount\n",
  (unsigned long long)rgd->rd_addr);
 fs_warn(sdp, "umount on all nodes and run fsck.gfs2 to fix the error\n");
 gfs2_rgrp_dump(((void*)0), rgd->rd_gl);
 rgd->rd_flags |= GFS2_RDF_ERROR;
}
