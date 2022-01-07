
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_rpc_server {scalar_t__ flags; int list; } ;


 scalar_t__ FLAG_REGISTERED ;
 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpc_server_list ;
 int rpc_server_list_lock ;
 int rpc_server_register (struct msm_rpc_server*) ;
 scalar_t__ rpc_servers_active ;

int msm_rpc_create_server(struct msm_rpc_server *server)
{

 server->flags = 0;
 INIT_LIST_HEAD(&server->list);

 mutex_lock(&rpc_server_list_lock);
 list_add(&server->list, &rpc_server_list);
 if (rpc_servers_active) {
  rpc_server_register(server);
  server->flags |= FLAG_REGISTERED;
 }
 mutex_unlock(&rpc_server_list_lock);

 return 0;
}
