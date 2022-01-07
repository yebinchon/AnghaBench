
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int proc_net; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct net* get_proc_task_net (struct inode*) ;
 struct dentry* proc_lookup_de (int ,struct inode*,struct dentry*) ;
 int put_net (struct net*) ;

__attribute__((used)) static struct dentry *proc_tgid_net_lookup(struct inode *dir,
  struct dentry *dentry, struct nameidata *nd)
{
 struct dentry *de;
 struct net *net;

 de = ERR_PTR(-ENOENT);
 net = get_proc_task_net(dir);
 if (net != ((void*)0)) {
  de = proc_lookup_de(net->proc_net, dir, dentry);
  put_net(net);
 }
 return de;
}
