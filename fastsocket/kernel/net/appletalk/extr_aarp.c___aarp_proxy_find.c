
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atalk_addr {int s_node; } ;
struct aarp_entry {int dummy; } ;


 int AARP_HASH_SIZE ;
 struct aarp_entry* __aarp_find_entry (int ,struct net_device*,struct atalk_addr*) ;
 int * proxies ;

__attribute__((used)) static struct atalk_addr *__aarp_proxy_find(struct net_device *dev,
         struct atalk_addr *sa)
{
 int hash = sa->s_node % (AARP_HASH_SIZE - 1);
 struct aarp_entry *a = __aarp_find_entry(proxies[hash], dev, sa);

 return a ? sa : ((void*)0);
}
