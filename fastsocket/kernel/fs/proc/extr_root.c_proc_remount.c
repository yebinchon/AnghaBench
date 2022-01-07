
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct pid_namespace* s_fs_info; } ;
struct pid_namespace {int dummy; } ;


 int proc_parse_options (char*,struct pid_namespace*) ;

int proc_remount(struct super_block *sb, int *flags, char *data)
{
 struct pid_namespace *pid = sb->s_fs_info;
 return !proc_parse_options(data, pid);
}
