
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfnetlink_subsystem {size_t subsys_id; } ;


 int nfnl_lock () ;
 int nfnl_unlock () ;
 int ** subsys_table ;

int nfnetlink_subsys_unregister(const struct nfnetlink_subsystem *n)
{
 nfnl_lock();
 subsys_table[n->subsys_id] = ((void*)0);
 nfnl_unlock();

 return 0;
}
