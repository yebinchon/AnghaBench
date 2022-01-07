
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int exp_file_ops ;
 struct proc_dir_entry* proc_net_fops_create (struct net*,char*,int,int *) ;

__attribute__((used)) static int exp_proc_init(struct net *net)
{







 return 0;
}
