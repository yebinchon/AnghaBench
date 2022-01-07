
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rr_server {int device_number; int list; } ;


 int device_destroy (int ,int ) ;
 int kfree (struct rr_server*) ;
 int list_del (int *) ;
 int msm_rpcrouter_class ;
 int server_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rpcrouter_destroy_server(struct rr_server *server)
{
 unsigned long flags;

 spin_lock_irqsave(&server_list_lock, flags);
 list_del(&server->list);
 spin_unlock_irqrestore(&server_list_lock, flags);
 device_destroy(msm_rpcrouter_class, server->device_number);
 kfree(server);
}
