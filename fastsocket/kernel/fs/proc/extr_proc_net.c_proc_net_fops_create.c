
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct net {int proc_net; } ;
struct file_operations {int dummy; } ;
typedef int mode_t ;


 struct proc_dir_entry* proc_create (char const*,int ,int ,struct file_operations const*) ;

struct proc_dir_entry *proc_net_fops_create(struct net *net,
 const char *name, mode_t mode, const struct file_operations *fops)
{
 return proc_create(name, mode, net->proc_net, fops);
}
