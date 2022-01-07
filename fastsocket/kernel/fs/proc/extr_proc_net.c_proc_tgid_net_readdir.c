
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int proc_net; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef int filldir_t ;
struct TYPE_3__ {int d_inode; } ;


 int EINVAL ;
 struct net* get_proc_task_net (int ) ;
 int proc_readdir_de (int ,struct file*,void*,int ) ;
 int put_net (struct net*) ;

__attribute__((used)) static int proc_tgid_net_readdir(struct file *filp, void *dirent,
  filldir_t filldir)
{
 int ret;
 struct net *net;

 ret = -EINVAL;
 net = get_proc_task_net(filp->f_path.dentry->d_inode);
 if (net != ((void*)0)) {
  ret = proc_readdir_de(net->proc_net, filp, dirent, filldir);
  put_net(net);
 }
 return ret;
}
