
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_type; } ;
struct security_mnt_opts {int dummy; } ;
struct TYPE_2__ {int fs_flags; } ;


 int BUG_ON (int) ;
 int FS_BINARY_MOUNTDATA ;
 int security_free_mnt_opts (struct security_mnt_opts*) ;
 int security_init_mnt_opts (struct security_mnt_opts*) ;
 int selinux_parse_opts_str (char*,struct security_mnt_opts*) ;
 int selinux_set_mnt_opts (struct super_block*,struct security_mnt_opts*) ;

__attribute__((used)) static int superblock_doinit(struct super_block *sb, void *data)
{
 int rc = 0;
 char *options = data;
 struct security_mnt_opts opts;

 security_init_mnt_opts(&opts);

 if (!data)
  goto out;

 BUG_ON(sb->s_type->fs_flags & FS_BINARY_MOUNTDATA);

 rc = selinux_parse_opts_str(options, &opts);
 if (rc)
  goto out_err;

out:
 rc = selinux_set_mnt_opts(sb, &opts);

out_err:
 security_free_mnt_opts(&opts);
 return rc;
}
