
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; TYPE_1__* s_fs_info; } ;
struct cgroup_sb_opts {TYPE_1__* new_root; int none; int subsys_bits; } ;
struct TYPE_2__ {struct super_block* sb; } ;


 int BUG_ON (int) ;
 int CGROUP_SUPER_MAGIC ;
 int EINVAL ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int cgroup_ops ;
 int set_anon_super (struct super_block*,int *) ;

__attribute__((used)) static int cgroup_set_super(struct super_block *sb, void *data)
{
 int ret;
 struct cgroup_sb_opts *opts = data;


 if (!opts->new_root)
  return -EINVAL;

 BUG_ON(!opts->subsys_bits && !opts->none);

 ret = set_anon_super(sb, ((void*)0));
 if (ret)
  return ret;

 sb->s_fs_info = opts->new_root;
 opts->new_root->sb = sb;

 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = CGROUP_SUPER_MAGIC;
 sb->s_op = &cgroup_ops;

 return 0;
}
