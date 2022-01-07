
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct cgroupfs_root* s_fs_info; } ;
struct cgroupfs_root {scalar_t__ subsys_bits; int name; } ;
struct cgroup_sb_opts {scalar_t__ subsys_bits; scalar_t__ none; scalar_t__ name; } ;


 scalar_t__ strcmp (scalar_t__,int ) ;

__attribute__((used)) static int cgroup_test_super(struct super_block *sb, void *data)
{
 struct cgroup_sb_opts *opts = data;
 struct cgroupfs_root *root = sb->s_fs_info;


 if (opts->name && strcmp(opts->name, root->name))
  return 0;





 if ((opts->subsys_bits || opts->none)
     && (opts->subsys_bits != root->subsys_bits))
  return 0;

 return 1;
}
