
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_init_out {int minor; scalar_t__ max_background; scalar_t__ congestion_threshold; } ;
struct fuse_conn {scalar_t__ max_background; scalar_t__ congestion_threshold; } ;


 int CAP_SYS_ADMIN ;
 int capable (int ) ;
 scalar_t__ max_user_bgreq ;
 scalar_t__ max_user_congthresh ;
 int sanitize_global_limit (scalar_t__*) ;

__attribute__((used)) static void process_init_limits(struct fuse_conn *fc, struct fuse_init_out *arg)
{
 int cap_sys_admin = capable(CAP_SYS_ADMIN);

 if (arg->minor < 13)
  return;

 sanitize_global_limit(&max_user_bgreq);
 sanitize_global_limit(&max_user_congthresh);

 if (arg->max_background) {
  fc->max_background = arg->max_background;

  if (!cap_sys_admin && fc->max_background > max_user_bgreq)
   fc->max_background = max_user_bgreq;
 }
 if (arg->congestion_threshold) {
  fc->congestion_threshold = arg->congestion_threshold;

  if (!cap_sys_admin &&
      fc->congestion_threshold > max_user_congthresh)
   fc->congestion_threshold = max_user_congthresh;
 }
}
