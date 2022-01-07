
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {struct net* data; } ;
struct net {int dummy; } ;


 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 struct proc_dir_entry* __proc_create (struct proc_dir_entry**,char const*,int,int) ;
 int kfree (struct proc_dir_entry*) ;
 scalar_t__ proc_register (struct proc_dir_entry*,struct proc_dir_entry*) ;

struct proc_dir_entry *proc_net_mkdir(struct net *net, const char *name,
  struct proc_dir_entry *parent)
{
 struct proc_dir_entry *ent;

 ent = __proc_create(&parent, name, S_IFDIR | S_IRUGO | S_IXUGO, 2);
 if (ent) {
  ent->data = net;
  if (proc_register(parent, ent) < 0) {
   kfree(ent);
   ent = ((void*)0);
  }
 }
 return ent;
}
