
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 int capable (int ) ;
 int fs_warn (struct gfs2_sbd*,char*,int,int) ;
 int gfs2_freeze_fs (struct gfs2_sbd*) ;
 int gfs2_unfreeze_fs (struct gfs2_sbd*) ;
 int simple_strtol (char const*,int *,int ) ;

__attribute__((used)) static ssize_t freeze_store(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
 ssize_t ret = len;
 int error = 0;
 int n = simple_strtol(buf, ((void*)0), 0);

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 switch (n) {
 case 0:
  gfs2_unfreeze_fs(sdp);
  break;
 case 1:
  error = gfs2_freeze_fs(sdp);
  break;
 default:
  ret = -EINVAL;
 }

 if (error)
  fs_warn(sdp, "freeze %d error %d", n, error);

 return ret;
}
