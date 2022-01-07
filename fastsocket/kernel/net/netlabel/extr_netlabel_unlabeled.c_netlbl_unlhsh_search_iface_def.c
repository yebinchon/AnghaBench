
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_unlhsh_iface {scalar_t__ valid; } ;


 int netlbl_unlhsh_def ;
 struct netlbl_unlhsh_iface* netlbl_unlhsh_search_iface (int) ;
 struct netlbl_unlhsh_iface* rcu_dereference (int ) ;

__attribute__((used)) static struct netlbl_unlhsh_iface *netlbl_unlhsh_search_iface_def(int ifindex)
{
 struct netlbl_unlhsh_iface *entry;

 entry = netlbl_unlhsh_search_iface(ifindex);
 if (entry != ((void*)0))
  return entry;

 entry = rcu_dereference(netlbl_unlhsh_def);
 if (entry != ((void*)0) && entry->valid)
  return entry;

 return ((void*)0);
}
