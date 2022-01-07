
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_dom_map {int valid; } ;


 int netlbl_domhsh_def ;
 struct netlbl_dom_map* netlbl_domhsh_search (char const*) ;
 struct netlbl_dom_map* rcu_dereference (int ) ;

__attribute__((used)) static struct netlbl_dom_map *netlbl_domhsh_search_def(const char *domain)
{
 struct netlbl_dom_map *entry;

 entry = netlbl_domhsh_search(domain);
 if (entry == ((void*)0)) {
  entry = rcu_dereference(netlbl_domhsh_def);
  if (entry != ((void*)0) && !entry->valid)
   entry = ((void*)0);
 }

 return entry;
}
