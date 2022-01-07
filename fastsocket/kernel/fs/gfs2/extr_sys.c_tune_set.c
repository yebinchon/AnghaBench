
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_tune {int gt_spin; } ;
struct gfs2_sbd {struct gfs2_tune sd_tune; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 int capable (int ) ;
 unsigned int simple_strtoul (char const*,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t tune_set(struct gfs2_sbd *sdp, unsigned int *field,
   int check_zero, const char *buf, size_t len)
{
 struct gfs2_tune *gt = &sdp->sd_tune;
 unsigned int x;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 x = simple_strtoul(buf, ((void*)0), 0);

 if (check_zero && !x)
  return -EINVAL;

 spin_lock(&gt->gt_spin);
 *field = x;
 spin_unlock(&gt->gt_spin);
 return len;
}
