
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_fs_info; } ;
struct pid_namespace {int dummy; } ;


 int get_pid_ns (struct pid_namespace*) ;
 int set_anon_super (struct super_block*,int *) ;

__attribute__((used)) static int proc_set_super(struct super_block *sb, void *data)
{
 struct pid_namespace *ns;

 ns = (struct pid_namespace *)data;
 sb->s_fs_info = get_pid_ns(ns);
 return set_anon_super(sb, ((void*)0));
}
