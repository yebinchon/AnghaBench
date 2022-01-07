
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 struct task_struct* endpoint ;
 struct task_struct* kthread_run (int ,int *,char*) ;
 struct task_struct* msm_rpc_open () ;
 int rpc_server_register_all () ;
 int rpc_servers_active ;
 int rpc_servers_thread ;

__attribute__((used)) static int rpcservers_probe(struct platform_device *pdev)
{
 struct task_struct *server_thread;

 endpoint = msm_rpc_open();
 if (IS_ERR(endpoint))
  return PTR_ERR(endpoint);


 rpc_servers_active = 1;
 rpc_server_register_all();


 server_thread = kthread_run(rpc_servers_thread, ((void*)0), "krpcserversd");
 if (IS_ERR(server_thread))
  return PTR_ERR(server_thread);

 return 0;
}
