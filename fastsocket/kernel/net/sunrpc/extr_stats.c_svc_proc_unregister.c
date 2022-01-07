
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_net_rpc ;
 int remove_proc_entry (char const*,int ) ;

void
svc_proc_unregister(const char *name)
{
 remove_proc_entry(name, proc_net_rpc);
}
