
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_net; } ;


 int dprintk (char*) ;
 TYPE_1__ init_net ;
 scalar_t__ proc_mkdir (char*,int ) ;
 scalar_t__ proc_net_rpc ;

void
rpc_proc_init(void)
{
 dprintk("RPC:       registering /proc/net/rpc\n");
 if (!proc_net_rpc)
  proc_net_rpc = proc_mkdir("rpc", init_net.proc_net);
}
