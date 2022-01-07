
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct file_operations {int dummy; } ;


 int dprintk (char*,char const*) ;
 struct proc_dir_entry* proc_create_data (char const*,int ,int ,struct file_operations const*,void*) ;
 int proc_net_rpc ;
 int rpc_proc_init () ;

__attribute__((used)) static inline struct proc_dir_entry *
do_register(const char *name, void *data, const struct file_operations *fops)
{
 rpc_proc_init();
 dprintk("RPC:       registering /proc/net/rpc/%s\n", name);

 return proc_create_data(name, 0, proc_net_rpc, fops, data);
}
