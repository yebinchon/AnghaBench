
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_fsname; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 int capable (int ) ;
 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,int ) ;
 int simple_strtol (char const*,int *,int ) ;

__attribute__((used)) static ssize_t withdraw_store(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (simple_strtol(buf, ((void*)0), 0) != 1)
  return -EINVAL;

 gfs2_lm_withdraw(sdp,
  "GFS2: fsid=%s: withdrawing from cluster at user's request\n",
  sdp->sd_fsname);
 return len;
}
