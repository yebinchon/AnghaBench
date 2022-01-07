
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ip_set_id_t ;


 int ip_set_put_byindex (int ) ;
 int nfnl_lock () ;
 int nfnl_unlock () ;

void
ip_set_nfnl_put(ip_set_id_t index)
{
 nfnl_lock();
 ip_set_put_byindex(index);
 nfnl_unlock();
}
