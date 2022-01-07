
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {int dummy; } ;
typedef int ip_set_id_t ;


 int ip_set_get_byname (char const*,struct ip_set**) ;
 int nfnl_lock () ;
 int nfnl_unlock () ;

ip_set_id_t
ip_set_nfnl_get(const char *name)
{
 struct ip_set *s;
 ip_set_id_t index;

 nfnl_lock();
 index = ip_set_get_byname(name, &s);
 nfnl_unlock();

 return index;
}
