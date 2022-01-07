
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ip_set_id_t ;


 scalar_t__ IPSET_INVALID_ID ;
 int __ip_set_get (scalar_t__) ;
 scalar_t__* ip_set_list ;
 scalar_t__ ip_set_max ;
 int nfnl_lock () ;
 int nfnl_unlock () ;

ip_set_id_t
ip_set_nfnl_get_byindex(ip_set_id_t index)
{
 if (index > ip_set_max)
  return IPSET_INVALID_ID;

 nfnl_lock();
 if (ip_set_list[index])
  __ip_set_get(index);
 else
  index = IPSET_INVALID_ID;
 nfnl_unlock();

 return index;
}
