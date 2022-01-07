
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;
struct pid_namespace {int dummy; } ;


 int kill_anon_super (struct super_block*) ;
 int put_pid_ns (struct pid_namespace*) ;

__attribute__((used)) static void proc_kill_sb(struct super_block *sb)
{
 struct pid_namespace *ns;

 ns = (struct pid_namespace *)sb->s_fs_info;
 kill_anon_super(sb);
 put_pid_ns(ns);
}
