
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gfs2_sbd {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int capable (int ) ;
 int gfs2_quota_refresh (struct gfs2_sbd*,int,int ) ;
 int simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t quota_refresh_user_store(struct gfs2_sbd *sdp, const char *buf,
     size_t len)
{
 int error;
 u32 id;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 id = simple_strtoul(buf, ((void*)0), 0);

 error = gfs2_quota_refresh(sdp, 1, id);
 return error ? error : len;
}
