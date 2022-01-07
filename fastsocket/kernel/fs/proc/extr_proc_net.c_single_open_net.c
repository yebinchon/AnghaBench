
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENXIO ;
 struct net* get_proc_net (struct inode*) ;
 int put_net (struct net*) ;
 int single_open (struct file*,int (*) (struct seq_file*,void*),struct net*) ;

int single_open_net(struct inode *inode, struct file *file,
  int (*show)(struct seq_file *, void *))
{
 int err;
 struct net *net;

 err = -ENXIO;
 net = get_proc_net(inode);
 if (net == ((void*)0))
  goto err_net;

 err = single_open(file, show, net);
 if (err < 0)
  goto err_open;

 return 0;

err_open:
 put_net(net);
err_net:
 return err;
}
