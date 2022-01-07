
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid_namespace {int dummy; } ;
struct nameidata {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
typedef int pid_t ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;


 int ENOENT ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int current ;
 char* kmalloc (int,int ) ;
 int nd_set_link (struct nameidata*,char*) ;
 int sprintf (char*,char*,int) ;
 int task_tgid_nr_ns (int ,struct pid_namespace*) ;

__attribute__((used)) static void *proc_self_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct pid_namespace *ns = dentry->d_sb->s_fs_info;
 pid_t tgid = task_tgid_nr_ns(current, ns);
 char *name = ERR_PTR(-ENOENT);
 if (tgid) {

  name = kmalloc(12, GFP_KERNEL);
  if (!name)
   name = ERR_PTR(-ENOMEM);
  else
   sprintf(name, "%d", tgid);
 }
 nd_set_link(nd, name);
 return ((void*)0);
}
