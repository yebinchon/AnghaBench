
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_tune {unsigned int gt_quota_scale_num; unsigned int gt_quota_scale_den; int gt_spin; } ;
struct gfs2_sbd {struct gfs2_tune sd_tune; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 int capable (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static ssize_t quota_scale_store(struct gfs2_sbd *sdp, const char *buf,
     size_t len)
{
 struct gfs2_tune *gt = &sdp->sd_tune;
 unsigned int x, y;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (sscanf(buf, "%u %u", &x, &y) != 2 || !y)
  return -EINVAL;

 spin_lock(&gt->gt_spin);
 gt->gt_quota_scale_num = x;
 gt->gt_quota_scale_den = y;
 spin_unlock(&gt->gt_spin);
 return len;
}
