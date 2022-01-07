
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ LOWEST_SLAVE ;
 scalar_t__ tipc_cltr_create (int ) ;
 scalar_t__ tipc_highest_allowed_slave ;
 scalar_t__ tipc_max_slaves ;
 int tipc_own_addr ;

int tipc_cltr_init(void)
{
 tipc_highest_allowed_slave = LOWEST_SLAVE + tipc_max_slaves;
 return tipc_cltr_create(tipc_own_addr) ? 0 : -ENOMEM;
}
