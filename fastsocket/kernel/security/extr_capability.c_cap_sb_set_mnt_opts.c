
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct security_mnt_opts {int num_mnt_opts; } ;


 int EOPNOTSUPP ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int cap_sb_set_mnt_opts(struct super_block *sb,
          struct security_mnt_opts *opts)
{
 if (unlikely(opts->num_mnt_opts))
  return -EOPNOTSUPP;
 return 0;
}
