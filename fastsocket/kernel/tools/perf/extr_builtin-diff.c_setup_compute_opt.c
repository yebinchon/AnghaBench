
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMPUTE_WEIGHTED_DIFF ;
 int EINVAL ;
 scalar_t__ compute ;
 int pr_err (char*,char*) ;
 int setup_compute_opt_wdiff (char*) ;

__attribute__((used)) static int setup_compute_opt(char *opt)
{
 if (compute == COMPUTE_WEIGHTED_DIFF)
  return setup_compute_opt_wdiff(opt);

 if (opt) {
  pr_err("Failed: extra option specified '%s'", opt);
  return -EINVAL;
 }

 return 0;
}
