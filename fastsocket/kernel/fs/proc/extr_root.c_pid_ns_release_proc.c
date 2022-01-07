
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int proc_mnt; } ;


 int mntput (int ) ;

void pid_ns_release_proc(struct pid_namespace *ns)
{
 mntput(ns->proc_mnt);
}
