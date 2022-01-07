
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcbind_args {struct rpcbind_args* r_addr; int r_xprt; int r_status; } ;


 int kfree (struct rpcbind_args*) ;
 int rpcb_wake_rpcbind_waiters (int ,int ) ;
 int xprt_put (int ) ;

__attribute__((used)) static void rpcb_map_release(void *data)
{
 struct rpcbind_args *map = data;

 rpcb_wake_rpcbind_waiters(map->r_xprt, map->r_status);
 xprt_put(map->r_xprt);
 kfree(map->r_addr);
 kfree(map);
}
