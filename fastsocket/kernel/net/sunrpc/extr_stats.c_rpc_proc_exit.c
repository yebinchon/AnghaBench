
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_net; } ;


 int dprintk (char*) ;
 TYPE_1__ init_net ;
 int * proc_net_rpc ;
 int remove_proc_entry (char*,int ) ;

void
rpc_proc_exit(void)
{
 dprintk("RPC:       unregistering /proc/net/rpc\n");
 if (proc_net_rpc) {
  proc_net_rpc = ((void*)0);
  remove_proc_entry("rpc", init_net.proc_net);
 }
}
