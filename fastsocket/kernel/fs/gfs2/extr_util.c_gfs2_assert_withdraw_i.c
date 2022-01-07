
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_fsname; } ;


 int dump_stack () ;
 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,int ,char*,int ,char const*,char*,unsigned int) ;

int gfs2_assert_withdraw_i(struct gfs2_sbd *sdp, char *assertion,
      const char *function, char *file, unsigned int line)
{
 int me;
 me = gfs2_lm_withdraw(sdp,
  "GFS2: fsid=%s: fatal: assertion \"%s\" failed\n"
  "GFS2: fsid=%s:   function = %s, file = %s, line = %u\n",
  sdp->sd_fsname, assertion,
  sdp->sd_fsname, function, file, line);
 dump_stack();
 return (me) ? -1 : -2;
}
