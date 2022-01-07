
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_vfs; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 int capable (int ) ;
 int gfs2_quota_sync (int ,int ) ;
 int simple_strtol (char const*,int *,int ) ;

__attribute__((used)) static ssize_t quota_sync_store(struct gfs2_sbd *sdp, const char *buf,
    size_t len)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (simple_strtol(buf, ((void*)0), 0) != 1)
  return -EINVAL;

 gfs2_quota_sync(sdp->sd_vfs, 0);
 return len;
}
