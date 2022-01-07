
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct security_mnt_opts {int dummy; } ;


 int EINVAL ;
 int security_free_mnt_opts (struct security_mnt_opts*) ;
 int selinux_get_mnt_opts (struct super_block*,struct security_mnt_opts*) ;
 int selinux_write_opts (struct seq_file*,struct security_mnt_opts*) ;

__attribute__((used)) static int selinux_sb_show_options(struct seq_file *m, struct super_block *sb)
{
 struct security_mnt_opts opts;
 int rc;

 rc = selinux_get_mnt_opts(sb, &opts);
 if (rc) {

  if (rc == -EINVAL)
   rc = 0;
  return rc;
 }

 selinux_write_opts(m, &opts);

 security_free_mnt_opts(&opts);

 return rc;
}
