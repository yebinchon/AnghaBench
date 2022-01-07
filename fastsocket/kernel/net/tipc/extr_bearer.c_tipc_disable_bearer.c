
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bearer_disable (char const*) ;
 int tipc_net_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int tipc_disable_bearer(const char *name)
{
 int res;

 write_lock_bh(&tipc_net_lock);
 res = bearer_disable(name);
 write_unlock_bh(&tipc_net_lock);
 return res;
}
